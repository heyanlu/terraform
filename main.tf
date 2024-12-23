terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  region     = var.region
}


module "s3_bucket" {
  source = "./s3"
}


module "iam" {
  source = "./iam"
  
}


module "ec2" {
  source = "./ec2"
  instance_name      = var.instance_name
  instance_type      = var.instance_type
  iam_instance_profile = module.iam.iam_instance_profile
  security_group_id  = module.security_group.security_group_id
}


module "security_group"{
  source = "./sg"
  vpc_id = var.vpc_id
}