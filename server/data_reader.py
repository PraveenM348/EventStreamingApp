from kafka import KafkaConsumer
import mysql.connector
from datetime import datetime

TOPIC='events'
DATABASE = 'userevents'
USERNAME = 'root'
PASSWORD = 'test'

print("Connecting to the database")
try:
    connection = mysql.connector.connect(host='localhost', database=DATABASE, user=USERNAME, password=PASSWORD)
except Exception:
    print("Could not connect to database. Please check credentials")
else:
    print("Connected to database")
cursor = connection.cursor()

print("Connecting to Kafka")
consumer = KafkaConsumer(TOPIC)
print("Connected to Kafka")
print(f"Reading messages from the topic {TOPIC}")
for msg in consumer:

    # Extract information from kafka

    message = msg.value.decode("utf-8")

    # Transform the date format to suit the database schema
    (product_id,name,event,timestamp) = message.split(",")

    # Loading data into the database table

    sql = "insert into events values(%s,%s,%s,%s,%s)"
    result = cursor.execute(sql, (timestamp, product_id, name, event,0))
    print(f"A {event} event on product {name} at {timestamp} was inserted into the database")
    connection.commit()
connection.close()
