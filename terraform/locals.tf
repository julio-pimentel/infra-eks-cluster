locals {
  cluster_name    = "eks-cluster-${random_string.suffix.result}"
  cluster_version = "1.27"
  ami_type        = "AL2_x86_64"
  ecr_name        = "ecr-repository"
  min_size        = 1
  max_size        = 2
  desired_size    = 1

  tags = {
    Name = local.ecr_name
  }
}
