# Terraform config for Kafka

These Terraform config files will set up Kafka on your Kubernetes cluster. To do this, the [Strimzi helm chart](https://github.com/strimzi/strimzi-kafka-operator/tree/main/helm-charts) will be used.

## Requirements

- Helm
- Kubectl
- Terraform

The config also comes with sample Python files used to connect to the producer and consumer

## Installation

```
terraform init
terraform apply
```
