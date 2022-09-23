data "aws_subnet_ids" "vpc" {
  vpc_id = var.vpc_id
}

data "aws_key_pair" "key_name" {
  name = "haobing.zhao"
}
