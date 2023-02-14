from kafka import KafkaProducer
producer = KafkaProducer(bootstrap_servers='my-cluster-kafka-external-bootstrap:9094')
for _ in range(100):
    producer.send('foobar', b'some_message_bytes')
