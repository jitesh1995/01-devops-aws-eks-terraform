module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"
  count   = var.enable_eks ? 1 : 0

  cluster_name    = var.cluster_name
  cluster_version = "1.30"

  vpc_id     = aws_vpc.main.id
  subnet_ids = [for s in aws_subnet.public : s.id]
}
