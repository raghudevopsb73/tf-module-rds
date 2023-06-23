data "aws_ssm_parameter" "username" {
  name = "roboshop.${var.env}.mysql.username"
}

data "aws_ssm_parameter" "password" {
  name = "roboshop.${var.env}.mysql.password"
}

