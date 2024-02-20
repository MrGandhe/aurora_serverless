# Calling modules
module "rds" {
  provision_vpc            = var.provision_vpc
  source                   = "./module"
  vpc_name                 = var.vpc_name
  vpc_cidr                 = var.vpc_cidr
  vpc_azs                  = var.vpc_azs
  vpc_private_subnet_cidrs = var.vpc_private_subnet_cidrs
  vpc_public_subnet_cidrs  = var.vpc_public_subnet_cidrs
  vpc_tags                 = var.vpc_tags
  single_nat_gateway       = var.single_nat_gateway
  rds_subnet_group_name    = var.rds_subnet_group_name
  db_username              = var.db_username
  rds_instance_class       = var.rds_instance_class

  rds_engine         = var.rds_engine
  rds_engine_mode    = var.rds_engine_mode
  rds_engine_version = var.rds_engine_version
  #db_password = var.db_password
  instance_count = 2
  instance_name  = var.db_instance_name
  secret_name    = var.aws_secret_name
}

resource "aws_qldb_ledger" "dev-ledger" {
  name                = var.qldb_name
  permissions_mode    = "ALLOW_ALL"
  deletion_protection = false
}
