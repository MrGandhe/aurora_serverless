resource "aws_db_subnet_group" "dev_db_subnet_grp" {
  name = var.rds_subnet_group_name
  # subnet_ids = var.vpc_public_subnet_cidrs
  # subnet_ids = "$element(module.vpc.public_subnets, 1)"
  subnet_ids = module.vpc.public_subnets

  tags = {
    Name = "dev"
  }
}

resource "aws_db_parameter_group" "dev_db_perameter_grp" {
  name   = "dev-db"
  family = "aurora-postgresql14"

  parameter {
    name  = "log_connections"
    value = "1"
  }
}