variable "instance_name" {
  description = "EC2 Instance Name"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "iam_instance_profile" {
  description = "IAM Instance Profile Name"
  type        = string
}

variable "security_group_id" {
  description = "ID of the Security Group"
  type        = string
}
