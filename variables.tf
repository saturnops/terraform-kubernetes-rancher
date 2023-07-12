variable "rancher_config" {
  type = any
  default = {
    email       = ""
    hostname    = ""
    values_yaml = ""
  }
  description = "Specify the configuration settings for Rancher including the hostname,email, and custom YAML values."
}

variable "namespace" {
  type        = string
  default     = "cattle-system"
  description = "Name of the Kubernetes namespace where the Rancher deployment will be deployed."
}

variable "chart_version" {
  type        = string
  default     = "2.7.5-rc5"
  description = "Version of the Rancher chart that will be used to deploy Rancher application."
}

variable "rancher_resource_limit" {
  type = any
  default = {
    pod_max_cpu = ""
    pod_max_mem = ""
    pod_min_cpu = ""
    pod_min_mem = ""
    pvc_min_storage = ""
    pvc_max_storage = ""
    container_max_cpu = ""
    container_min_mem = ""
    container_min_cpu = ""
    container_max_mem = ""
  }
  description = "Specify the configuration settings for Rancher resources limits including cpu, mem, pvc storage for Pods and Container."
}

variable "create_resource_limit" {
  description = "value"
  default = false
  type = bool
}

variable "rancher_resource_quota" {
  type = object({
    no_of_pods          = number
    no_of_services      = number
  })
  description = "Specify the configuration settings for Rancher resources quota in a namespace."
}

variable "create_resource_quota" {
  description = "value"
  default = false
  type = bool
}