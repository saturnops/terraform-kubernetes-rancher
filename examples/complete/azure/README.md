# Azure Rancher Terraform Kubernetes Modules
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.71.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_rancher"></a> [rancher](#module\_rancher) | saturnops/rancher/kubernetes | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.primary](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/kubernetes_cluster) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rancher_credentials"></a> [rancher\_credentials](#output\_rancher\_credentials) | Rancher\_Info |
<!-- END_TF_DOCS -->