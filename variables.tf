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
  default     = "2.8.2"
  description = "Version of the Rancher chart that will be used to deploy Rancher application."
}

variable "rancher_resource_limit" {
  type = any
  default = {
    pod_max_cpu       = "1000m"
    pod_max_mem       = "4000Mi"
    pod_min_cpu       = "5m"
    pod_min_mem       = "50Mi"
    pvc_min_storage   = "24M"
    pvc_max_storage   = "200G"
    container_max_cpu = "1000m"
    container_min_mem = "50Mi"
    container_min_cpu = "5m"
    container_max_mem = "3132Mi"
  }
  description = "Specify the configuration settings for Rancher resources limits including cpu, mem, pvc storage for Pods and Container."
}

variable "create_resource_limit" {
  description = "Whether enable or disble the resource limit For cattle-system namespace"
  default     = false
  type        = bool
}

variable "rancher_resource_quota" {
  type = any
  default = {
    no_of_pods     = 10
    no_of_services = 5
  }
  description = "Specify the configuration settings for Rancher resources quota in a namespace."
}

variable "create_resource_quota" {
  description = "Whether enable or disble the resource quota For cattle-system namespace"
  default     = false
  type        = bool
}
