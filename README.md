## RancherKubernetes Terraform Module



<br>
This Terraform module deploys Rancher on a Kubernetes cluster, providing an open-source platform for managing Kubernetes and containerized applications. <br> 
  

  - Automatic generation of Kubernetes resources
  - Support for deploying Rancher on a single node or multiple nodes

## Supported Versions Table:

| Rancher Helm Chart Version       |     K8s supported version (EKS, AKS & GKE)   |  
 | :-----:                       |         :---         |
 | **2.7.0**          |    **1.23,1.24**       |
 | **2.7.2**          |    **1.23,1.24,1.25,1.26**      |

## Important Notes:
This module is compatible with EKS, AKS, and GKE, making it ideal for deployments on AWS, Azure, and GCP. Review the documentation, meet configuration requirements, and test thoroughly to ensure proper functionality.

## Usage Example

```hcl
module "rancher" {
  source         = "saturnops/rancher/kubernetes"
  rancher_config = {
    email    = "email@email.com"
    hostname = ""
    values_yaml = ""
  }
}


```
- Refer [AWS examples](https://github.com/saturnops/terraform-kubernetes-rancher/tree/main/examples/complete/aws) for more details.
- Refer [Azure examples](https://github.com/saturnops/terraform-kubernetes-rancher/tree/main/examples/complete/azure) for more details.
- Refer [GCP examples](https://github.com/saturnops/terraform-kubernetes-rancher/tree/main/examples/complete/gcp) for more details.

## IAM Permissions
The required IAM permissions to create resources from this module can be found [here](https://github.com/saturnops/terraform-kubernetes-rancher/blob/main/IAM.md)

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
| [kubernetes_limit_range_v1.rancher_limit](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/limit_range_v1) | resource |
| [kubernetes_namespace.cattle_system](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kubernetes_resource_quota_v1.rancher_resource_quota](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/resource_quota_v1) | resource |
| [random_password.rancher_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [kubernetes_secret.rancher_password](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/data-sources/secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Version of the Rancher chart that will be used to deploy Rancher application. | `string` | `"2.8.2"` | no |
| <a name="input_create_resource_limit"></a> [create\_resource\_limit](#input\_create\_resource\_limit) | Whether enable or disble the resource limit For cattle-system namespace | `bool` | `false` | no |
| <a name="input_create_resource_quota"></a> [create\_resource\_quota](#input\_create\_resource\_quota) | Whether enable or disble the resource quota For cattle-system namespace | `bool` | `false` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Name of the Kubernetes namespace where the Rancher deployment will be deployed. | `string` | `"cattle-system"` | no |
| <a name="input_rancher_config"></a> [rancher\_config](#input\_rancher\_config) | Specify the configuration settings for Rancher including the hostname,email, and custom YAML values. | `any` | <pre>{<br>  "email": "",<br>  "hostname": "",<br>  "values_yaml": ""<br>}</pre> | no |
| <a name="input_rancher_resource_limit"></a> [rancher\_resource\_limit](#input\_rancher\_resource\_limit) | Specify the configuration settings for Rancher resources limits including cpu, mem, pvc storage for Pods and Container. | `any` | <pre>{<br>  "container_max_cpu": "1000m",<br>  "container_max_mem": "3132Mi",<br>  "container_min_cpu": "5m",<br>  "container_min_mem": "50Mi",<br>  "pod_max_cpu": "1000m",<br>  "pod_max_mem": "4000Mi",<br>  "pod_min_cpu": "5m",<br>  "pod_min_mem": "50Mi",<br>  "pvc_max_storage": "200G",<br>  "pvc_min_storage": "24M"<br>}</pre> | no |
| <a name="input_rancher_resource_quota"></a> [rancher\_resource\_quota](#input\_rancher\_resource\_quota) | Specify the configuration settings for Rancher resources quota in a namespace. | `any` | <pre>{<br>  "no_of_pods": 10,<br>  "no_of_services": 5<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rancher"></a> [rancher](#output\_rancher) | Rancher\_Info |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->






##           





Please give our GitHub repository a ⭐️ to show your support and increase its visibility.





