locals {
  region = "ap-south-1"
  additional_tags = {
    name        = "test"
    environment = "saturnops"
  }
}

module "rancher" {
  source = "../../"
  rancher_config = {
    email       = "rohit.kumar@saturnops.com"
    hostname    = "rancher.ref.dev.skaf.saturnops.in"
    values_yaml = file("./helm/values.yaml")
  }
}
