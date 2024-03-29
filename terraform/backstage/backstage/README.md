# boilerplate-ui

> This project was generated by [generator-tf-module](https://github.com/sudokar/generator-tf-module)

## Overview

Boilerplate UI

## Usage

```hcl
module "boilerplate-ui" {
  source = "git::ssh://"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.49.0 |
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | 1.14.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.16.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ingress"></a> [ingress](#module\_ingress) | ../../ingress | n/a |
| <a name="module_k8s_app"></a> [k8s\_app](#module\_k8s\_app) | git::https://github.com/sourcefuse/terraform-k8s-app.git | 0.1.1 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.backstage_secrets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.backstage_secrets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.backstage_secrets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [kubectl_manifest.secret_provider_class](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubernetes_namespace.backstage](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kubernetes_service_account.sa](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_host_name"></a> [app\_host\_name](#input\_app\_host\_name) | Host name to expose via Route53 | `string` | n/a | yes |
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | `app` annotation value | `string` | n/a | yes |
| <a name="input_app_port_number"></a> [app\_port\_number](#input\_app\_port\_number) | Port number for the container to run under | `number` | n/a | yes |
| <a name="input_container_image"></a> [container\_image](#input\_container\_image) | url for image being used to setup backstage | `string` | `"spotify/backstage-cookiecutter"` | no |
| <a name="input_db_host"></a> [db\_host](#input\_db\_host) | SSM param name for the DB cluster | `string` | n/a | yes |
| <a name="input_db_password"></a> [db\_password](#input\_db\_password) | SSM param name for the DB cluster service account password | `string` | n/a | yes |
| <a name="input_db_port"></a> [db\_port](#input\_db\_port) | Port of the database | `number` | `5432` | no |
| <a name="input_db_user"></a> [db\_user](#input\_db\_user) | SSM param name for the DB cluster service account user | `string` | n/a | yes |
| <a name="input_eks_cluster_account_id"></a> [eks\_cluster\_account\_id](#input\_eks\_cluster\_account\_id) | EKS Cluster account ID | `string` | n/a | yes |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | Name of the EKS cluster | `string` | n/a | yes |
| <a name="input_eks_cluster_oidc_issuer"></a> [eks\_cluster\_oidc\_issuer](#input\_eks\_cluster\_oidc\_issuer) | EKS Cluster OIDC Provider issuer URL | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT' | `string` | n/a | yes |
| <a name="input_github_client_id"></a> [github\_client\_id](#input\_github\_client\_id) | SSM param name for the  GitHub OAuth 2.0 app client\_id | `string` | n/a | yes |
| <a name="input_github_client_secret"></a> [github\_client\_secret](#input\_github\_client\_secret) | SSM param name for the GitHub OAuth 2.0 app client\_id | `string` | n/a | yes |
| <a name="input_github_token"></a> [github\_token](#input\_github\_token) | SSM param name for the GitHub service account token used for GH integrations. | `string` | n/a | yes |
| <a name="input_k8s_namespace"></a> [k8s\_namespace](#input\_k8s\_namespace) | k8s Namespace | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | `"us-east-1"` | no |
| <a name="input_service_account_name"></a> [service\_account\_name](#input\_service\_account\_name) | Name of the k8s service account | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Development

### Prerequisites

- [terraform](https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform)
- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [pre-commit](https://pre-commit.com/#install)
- [golang](https://golang.org/doc/install#install)
- [golint](https://github.com/golang/lint#installation)

### Configurations

- Configure pre-commit hooks
```sh
pre-commit install
```


- Configure golang deps for tests
```sh
> go get github.com/gruntwork-io/terratest/modules/terraform
> go get github.com/stretchr/testify/assert
```



### Tests

- Tests are available in `test` directory

- In the test directory, run the below command
```sh
go test
```



## Authors

This project is authored by below people

- SourceFuse

> This project was generated by [generator-tf-module](https://github.com/sudokar/generator-tf-module)
