## RancherKubernetes Terraform Module



<br>
This Terraform module deploys Rancher on a Kubernetes cluster, providing an open-source platform for managing Kubernetes and containerized applications. <br> 
  

  - Automatic generation of Kubernetes resources
  - Support for deploying Rancher on a single node or multiple nodes

## Supported Versions Table:

| Rancher Helm Chart Version       |     K8s supported version   |  
 | :-----:                       |         :---         |
 | **2.7.0**          |    **1.23,1.24**       |
 | **2.7.2**          |    **1.23,1.24,1.25**      |

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
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Version of the Jenkins chart that will be used to deploy Rancher application. | `string` | `"2.7.2"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Name of the Kubernetes namespace where the Rancher deployment will be deployed. | `string` | `"cattle-system"` | no |
| <a name="input_rancher_config"></a> [rancher\_config](#input\_rancher\_config) | Specify the configuration settings for Rancher including the hostname,email, and custom YAML values. | `any` | <pre>{<br>  "email": "",<br>  "hostname": "",<br>  "values_yaml": ""<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rancher"></a> [rancher](#output\_rancher) | Rancher\_Info |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->






##           





Please give our GitHub repository a ⭐️ to show your support and increase its visibility.





