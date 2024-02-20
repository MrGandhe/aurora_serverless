vpc_name                 = "dev-vpc"
vpc_cidr                 = "10.1.0.0/16"
vpc_azs                  = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
vpc_private_subnet_cidrs = ["10.1.101.0/24", "10.1.102.0/24", "10.1.103.0/24"]
vpc_public_subnet_cidrs  = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
vpc_tags = {
  Terraform   = "true"
  Environment = "dev"
}
single_nat_gateway = true

db_username = "dev"
#db_password = "opendevdb"
rds_engine            = "aurora-postgresql"
rds_engine_mode       = "provisioned"
rds_subnet_group_name = "dev_db"
rds_instance_class      = "db.serverless"
rds_engine_version          = "15.4"
db_instance_name      = "dev-aurora"
aws_secret_name       = "dev_db1"
qldb_name             = "dev-qldb"
