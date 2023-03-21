## RancherKubernetes Terraform Module



<br>

## Important Notes:
This module is compatible with EKS version 1.23, which is great news for users deploying the module on an EKS cluster running that version. Review the module's documentation, meet specific configuration requirements, and test thoroughly after deployment to ensure everything works as expected.
## Usage Example

```hcl
module "rancher" {
  source = "../../"
  rancher_config = {
    hostname = "rancher.saturnops.in"
    email    = "email@email.com"
    values_yaml = file("./helm/values.yaml")
  }
}


```
Refer [examples](https://github.com/sq-ia/terraform-kubernetes-rancher/tree/main/examples/complete) for more details.

## IAM Permissions
The required IAM permissions to create resources from this module can be found [here](https://github.com/sq-ia/terraform-kubernetes-rancher/blob/main/IAM.md)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.rancher](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_namespace.cattle_system](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [random_password.rancher_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [kubernetes_secret.rancher_password](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/data-sources/secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Chart version | `string` | `"2.7.0"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace name | `string` | `"cattle-system"` | no |
| <a name="input_rancher_config"></a> [rancher\_config](#input\_rancher\_config) | Rancher configurations | `any` | <pre>{<br>  "email": "",<br>  "hostname": "",<br>  "values_yaml": ""<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_initial_admin_password"></a> [initial\_admin\_password](#output\_initial\_admin\_password) | Initial admin password. Prompts for change on initial login. |
| <a name="output_user_name"></a> [user\_name](#output\_user\_name) | User name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->






##           





Please give our GitHub repository a ⭐️ to show your support and increase its visibility.





