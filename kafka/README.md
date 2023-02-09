# Terraform config for Kafka

These Terraform config files will set up Kafka on your Kubernetes cluster. To do this, the [Strimzi helm chart](https://github.com/strimzi/strimzi-kafka-operator/tree/main/helm-charts) will be used.

## Requirements

- Helm
- Kubectl
- Terraform

If you are running Minikube, make sure your kubectl command is configured correctly ([installing kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-kubectl-binary-with-curl-on-linux) normally should work).

## Installation

```
terraform init
```
```
terraform apply
```

Run the producer with:

```
kubectl run kafka-producer -n kafka -ti --image=quay.io/strimzi/kafka:0.32.0-kafka-3.3.1 --rm=true --restart=Never -- bin/kafka-console-producer.sh --bootstrap-server my-cluster-kafka-bootstrap:9092 --topic my-topic
```

Run the consumer with:

```
kubectl run kafka-consumer -n kafka -ti --image=quay.io/strimzi/kafka:0.32.0-kafka-3.3.1 --rm=true --restart=Never -- bin/kafka-console-consumer.sh --bootstrap-server my-cluster-kafka-bootstrap:9092 --topic my-topic --from-beginning
```
