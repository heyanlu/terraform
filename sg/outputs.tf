output "security_group_id" {
  description = "The ID of the Security Group"
  value       = aws_security_group.web_server_sg.id
}
