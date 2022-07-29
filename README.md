# flask-kafka
Training material for Python Flask and Kafka libraries

## Run the containers
```bash
docker-compose up
```



## Create a topic 

```bash
docker exec broker-kafka kafka-topics --bootstrap-server broker:9092 --create --topic NameOfYourTopic
```



## Send a message to a topic
Only for testing purposes, you can run:
```bash
docker exec --interactive --tty broker-kafka kafka-console-producer --bootstrap-server broker:9092 --topic NameOfYourTopic
```

Then you can write messages

## Read a message for a topic

```bash
docker exec --interactive --tty broker-kafka kafka-console-consumer --bootstrap-server broker:9092 --topic NameOfYourTopic --from-beginning
```

