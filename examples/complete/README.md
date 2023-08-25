## Rancher Example


<br>
This example will be very useful for users who are new to a module and want to quickly learn how to use it. By reviewing the examples, users can gain a better understanding of how the module works, what features it supports, and how to customize it to their specific needs.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_azure"></a> [azure](#provider\_azure) | n/a |
| <a name="provider_gcp"></a> [gcp](#provider\_gcp) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_rancher"></a> [rancher](#module\_rancher) | saturnops/rancher/kubernetes | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rancher_credentials"></a> [rancher\_credentials](#output\_rancher\_credentials) | Rancher\_Info |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
