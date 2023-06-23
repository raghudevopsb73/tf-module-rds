resource "aws_db_subnet_group" "main" {
  name       = "main"
  subnet_ids = var.subnet_ids
  tags       = merge({ Name = "${var.component}-${var.env}" }, var.tags)
}

resource "aws_rds_cluster" "main" {
  cluster_identifier = "${var.component}-${var.env}"
  engine             = var.engine
  engine_version     = var.engine_version
  database_name      = var.db_name
  master_username    = data.aws_ssm_parameter.username.value
  master_password    = data.aws_ssm_parameter.password.value
}



