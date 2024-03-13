resource "kubernetes_namespace" "cattle_system" {
  metadata {
    name = var.namespace
  }
}

resource "random_password" "rancher_password" {
  length  = 20
  special = false
}

resource "helm_release" "rancher" {
  depends_on = [kubernetes_namespace.cattle_system]
  name       = "rancher"
  chart      = "${path.module}/helm/chart/"
  timeout    = 600
  version    = var.chart_version
  namespace  = var.namespace

  values = [
    templatefile("${path.module}/helm/values/values.yaml", {
      email             = "${var.rancher_config.email}",
      hostname          = "${var.rancher_config.hostname}",
      bootstrapPassword = "${random_password.rancher_password.result}"
    }),
    var.rancher_config.values_yaml
  ]
}

data "kubernetes_secret" "rancher_password" {
  depends_on = [helm_release.rancher]
  metadata {
    name      = "bootstrap-secret"
    namespace = var.namespace
  }
}

resource "kubernetes_limit_range_v1" "rancher_limit" {
  count = var.create_resource_limit == true ? 1 : 0
  metadata {
    name      = "rancher-limit"
    namespace = var.namespace
  }
  spec {
    limit {
      type = "Pod"
      max = {
        cpu    = "${var.rancher_resource_limit.pod_max_cpu}"
        memory = "${var.rancher_resource_limit.pod_max_mem}"
      }
      min = {
        cpu    = "${var.rancher_resource_limit.pod_min_cpu}"
        memory = "${var.rancher_resource_limit.pod_min_mem}"
      }
    }
    limit {
      type = "PersistentVolumeClaim"
      min = {
        storage = "${var.rancher_resource_limit.pvc_min_storage}"
      }
      max = {
        storage = "${var.rancher_resource_limit.pvc_max_storage}"
      }
    }
    limit {
      type = "Container"
      max = {
        cpu    = "${var.rancher_resource_limit.container_max_cpu}"
        memory = "${var.rancher_resource_limit.container_max_mem}"
      }
      min = {
        cpu    = "${var.rancher_resource_limit.container_min_cpu}"
        memory = "${var.rancher_resource_limit.container_min_mem}"
      }
    }
  }
}

resource "kubernetes_resource_quota_v1" "rancher_resource_quota" {
  count = var.create_resource_quota == true ? 1 : 0
  metadata {
    name      = "rancher-resource-quota"
    namespace = var.namespace
  }
  spec {
    hard = {
      pods     = var.rancher_resource_quota.no_of_pods
      services = var.rancher_resource_quota.no_of_services
    }
  }
}
