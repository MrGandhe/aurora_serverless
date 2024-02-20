module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = var.vpc_name
  cidr   = var.vpc_cidr

  azs             = var.vpc_azs
  private_subnets = var.vpc_private_subnet_cidrs
  public_subnets  = var.vpc_public_subnet_cidrs

  enable_nat_gateway = true
  single_nat_gateway = var.single_nat_gateway


  tags = var.vpc_tags
}
