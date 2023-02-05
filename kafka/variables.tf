variable "kube_config" {
  type    = string
  default = "~/.kube/config"
}

variable "namespace" {
  type    = string
  default = "kafka"
}

variable "strimzi_version" {
  type = string
}
