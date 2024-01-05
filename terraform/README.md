<!-- BEGIN_TF_DOCS -->
# Terraform code - EKS & ECR

Terraform files for deploying EKS Cluster, ECR repository, VPC network.

## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.3 |
| aws | ~> 5.7.0 |
| cloudinit | ~> 2.3.2 |
| random | ~> 3.5.1 |
| tls | ~> 4.0.4 |

## Providers

| Name | Version |
|------|---------|
| aws | 5.7.0 |
| random | 3.5.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| ecr | terraform-aws-modules/ecr/aws | n/a |
| eks | terraform-aws-modules/eks/aws | 19.15.3 |
| irsa\_ebs\_csi | terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc | 4.7.0 |
| vpc | terraform-aws-modules/vpc/aws | 5.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_eks_addon.ebs-csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [random_string.suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy.ebs_csi_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| region | AWS region | `string` | `"ap-southeast-2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| cluster\_endpoint | Endpoint for EKS control plane |
| cluster\_name | Kubernetes Cluster Name |
| cluster\_security\_group\_id | Security group ids attached to the cluster control plane |
| region | AWS region |
| repository\_arn | Full ARN of the repository |
| repository\_registry\_id | The registry ID where the repository was created |
| repository\_url | The URL of the repository (in the form `aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName`) |
<!-- END_TF_DOCS -->