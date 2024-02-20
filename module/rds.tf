resource "aws_rds_cluster" "aurora_cluster" {
  cluster_identifier = "aurora-cluster-dev"
  engine             = var.rds_engine
  engine_mode        = var.rds_engine_mode
  # engine_mode = "serverless"
  engine_version          = var.rds_engine_version
  master_username         = var.db_username
  master_password         = data.aws_secretsmanager_secret_version.db_password.secret_string
  preferred_backup_window = "07:00-09:00"
  backup_retention_period = 7
  skip_final_snapshot     = true

  vpc_security_group_ids = [aws_security_group.rds.id] # Specify your security group ID
  deletion_protection    = false
  availability_zones     = ["ap-southeast-2a", "ap-southeast-2b"]     # Specify your desired AZs
  db_subnet_group_name   = aws_db_subnet_group.dev_db_subnet_grp.name # Create a subnet group if not exists
  # Additional cluster settings can be configured here
  serverlessv2_scaling_configuration {
    max_capacity = 64
    min_capacity = 8
  }
}

resource "aws_rds_cluster_instance" "aurora_instance" {
  count               = var.instance_count
  cluster_identifier  = aws_rds_cluster.aurora_cluster.id
  instance_class      = var.rds_instance_class # Change this to your desired instance type 
  engine              = var.rds_engine
  identifier          = "${var.instance_name}-${count.index}"
  publicly_accessible = true
  # Additional instance settings can be configured here
}


data "aws_secretsmanager_secret_version" "db_password" {
  secret_id = var.secret_name # Replace with your actual secret name

}

