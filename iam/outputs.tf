output "iam_instance_profile" {
  description = "The IAM Instance Profile Name"
  value       = aws_iam_instance_profile.ec2_s3_readonly_profile.name
}
