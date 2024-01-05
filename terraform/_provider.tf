provider "aws" {
  region = var.region

  # In case there is a specific IAM role to deploy Terraform infra
  /*assume_role {
    duration     = "15m"
    session_name = var.build_aws_account_id
    role_arn     = "arn:aws:iam::${var.build_aws_account_id}:role/${var.erp_build_deploy_role_name}"
  }*/
}
