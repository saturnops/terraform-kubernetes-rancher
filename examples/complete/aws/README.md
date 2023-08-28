# AWS Rancher Terraform Kubernetes Modules

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

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
<!-- END_TF_DOCS -->