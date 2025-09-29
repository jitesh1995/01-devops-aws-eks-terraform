# 01-devops-aws-eks-terraform

Terraform IaC for a minimal AWS VPC and optional EKS cluster module, with CI to enforce `terraform fmt` and `terraform validate`.

## Features
- Clean Terraform layout
- VPC + subnets always created
- Optional EKS cluster (toggle with `enable_eks`)
- GitHub Actions CI for `fmt` and `validate`

## Run locally
```bash
terraform init -backend=false
terraform fmt -check
terraform validate


**LICENSE**
```bash
cat > LICENSE << 'EOF'
MIT License
Copyright (c) 2025 Jitesh Khemchandani
...
# trigger CI
