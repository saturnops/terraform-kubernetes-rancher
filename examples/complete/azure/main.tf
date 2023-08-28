locals {
  region = "us-east-2"
  additional_tags = {
    Name        = "rancher"
    Owner       = "organization_name"
    Expires     = "Never"
    environment = "prod"
    Department  = "Engineering"
  }
}

module "rancher" {
  source = "saturnops/rancher/kubernetes"
  rancher_config = {
    email       = "email@email.com"
    hostname    = "rancher.skaf.saturnops.in"
    values_yaml = file("./helm/values.yaml")
  }
  create_resource_limit = true
  rancher_resource_limit = {
    pod_max_cpu = "1000m"
    pod_max_mem = "4000Mi"
    pod_min_cpu = "5m"
    pod_min_mem = "50Mi"
    pvc_min_storage = "24M"
    pvc_max_storage = "200G"
    container_max_cpu = "1000m"
    container_min_mem = "50Mi"
    container_min_cpu = "5m"
    container_max_mem = "3132Mi"
  }
  create_resource_quota = true
  rancher_resource_quota = {
    no_of_pods = 10
    no_of_services = 3
  }
}
