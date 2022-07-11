
# Event Streaming with Kafka

This project demonstrates the usage of an **event streaming platform** - Apache Kafka to stream events and
load the data to a database for Analysis, to build dashboards. Events such as Click, Hover are generated on Products
listed in the Products webpage which acts as a producer to push to the Kafka topic 'events'.
This data is further consumed by a data reader script that loads the data to a mysql table, from
which data is used to create a simple dashboard.


## Screenshots

![Products Page](/assets/product_page.png)

![Dashboard](/assets/dashboard.png)

![Data Reader](/assets/data_reader.png)

![Consumer](/assets/consumer.png)


## Technology Stack

**Front-End** : HTML, CSS, Javascript, Flask

**Web-Server** : Nginx 

**Back-End** : Mysql

**Event Streaming Platform** : Apache Kafka

**Dashboards** : Chart.js

