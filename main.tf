provider "aws" {
    region = "eu-west-2"
}

#create RDS MySQL DB
resource "aws_db_instance" "default" {
  identifier           = "mysql-db-01"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "tstdb01"
  password             = "tstdb01234" # you can use vault to secure your password
  allocated_storage    = 20
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}