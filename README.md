# flask-kafka
Training material for Python Flask and Kafka libraries.

Spike about Python libraries https://jobandtalent.atlassian.net/browse/EXT2-34

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

## Python clients

### Confluent Kafka
Problems to install in Docker. [Reported the issue](https://github.com/confluentinc/confluent-kafka-python/issues/1403) in the GH repo
