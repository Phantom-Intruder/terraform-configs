variable "kube_config" {
  type    = string
  default = "~/.kube/config"
}

variable "namespace" {
  type    = string
  default = "kafka"
}

variable "kube_type" {
  type        = string
  description = "minikube or kubectl?"

  validation {
    condition     = var.kube_type == "minikube" || var.kube_type == "kubectl"
    error_message = "The value should be minikube if using Minikube, kubectl in other situations"
  }
}
