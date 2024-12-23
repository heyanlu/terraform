variable "aws_access_key_id" {
  description = "AWS Access Key ID"
  type        = string
}

variable "aws_secret_access_key" {
  description = "AWS Secret" 
  type = string
}

variable "region" {
  description = "AWS Region where resources will be deployed"
  default     = "us-west-2"
  type        = string
}

variable "vpc_id" {
  description = "value of vpc_id"
  default = "vpc-0d7f4abc61bbc701d"
  type = string
}

variable "instance_name" {
  description = "EC2 Instance Name"
  default     = "web-server-instance"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  default     = "t2.micro"
}