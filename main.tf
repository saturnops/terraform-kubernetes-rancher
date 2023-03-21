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

  name      = "rancher"
  chart     = "${path.module}/helm/chart/"
  namespace = var.namespace
  timeout   = 600
  version   = var.chart_version

  values = [
    templatefile("${path.module}/helm/values/values.yaml", {
      hostname          = "${var.rancher_config.hostname}",
      email             = "${var.rancher_config.email}",
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
