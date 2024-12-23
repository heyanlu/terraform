# IAM Role
resource "aws_iam_role" "ec2_s3_role" {
  name = "ec2_s3_readonly_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

# IAM Policy Attachment
resource "aws_iam_role_policy_attachment" "ec2_s3_readonly_policy" {
  role       = aws_iam_role.ec2_s3_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

# Instance Profile 
resource "aws_iam_instance_profile" "ec2_s3_readonly_profile" {
  name = "ec2_s3_readonly_profile"
  role = aws_iam_role.ec2_s3_role.name
}