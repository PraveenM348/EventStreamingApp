from time import sleep, time, ctime
from random import random, randint, choice
from kafka import KafkaProducer
import mysql.connector

producer = KafkaProducer(bootstrap_servers='localhost:9092')
DATABASE = 'userevents'
USERNAME = 'root'
PASSWORD = 'iecTH0eA#!$'


TOPIC = 'events'

__events = None

def stream_event(product_id,name,event,timestamp):
    message = f"{product_id},{name},{event},{timestamp}"
    message = bytearray(message.encode("utf-8"))
    print(f"A {event} event has been recorded on product {product_id} at {timestamp}")
    producer.send(TOPIC, message)
    return "success"

def get_events():
    print("Connecting to the database")
    try:
        connection = mysql.connector.connect(host='localhost', database=DATABASE, user=USERNAME, password=PASSWORD)
    except Exception:
        print("Could not connect to database. Please check credentials")
    else:
        print("Connected to database")
    cursor = connection.cursor()


    data = dict()
    cursor.callproc('getEventStats')
    i = 0
    keys = ['eventTimestamp','productCount','eventCount']
    for result in cursor.stored_results():
        data[keys[i]] = result.fetchall()
        i += 1

    data['eventTimestamp'] = [{"timestamp":str(obj[0])+ " "+str(obj[1]),"count": int(obj[2])}for obj in data['eventTimestamp']]
    data['eventCount'] = [ {obj[0]:obj[1]} for obj in data['eventCount']]
    data['productCount'] = [ {obj[0]:obj[1]} for obj in data['productCount']]


    return data


if __name__ == '__main__':
    print(get_events())