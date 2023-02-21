resource "aws_iam_user" "user_1" {
  name = "Ali"
  

  tags = {
    tag-key = "User_01"
  }
}
// creating access key
resource "aws_iam_access_key" "user_1" {
  user = aws_iam_user.user_1.name
}
// policy that have full access to EC2,RDS and VPC.
resource "aws_iam_policy" "policy_1" {
  name        = "policy_1"
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ec2:*",
          "vpc:*",
          "rds:*"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "user_attachment_1" {
  user       = aws_iam_user.user_1.name
  policy_arn = aws_iam_policy.policy_1.arn
}