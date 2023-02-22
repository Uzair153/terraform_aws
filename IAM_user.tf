# resource "aws_iam_user" "user_1" {
#   name = "Ali"
  

#   tags = {
#     tag-key = "User_1"
#   }
# }

# resource "aws_iam_access_key" "user_1" {
#   user = aws_iam_user.user_1.name
# }
# // policy have full access to EC2 and RDS.
# resource "aws_iam_user_policy" "user_1_P" {
#   name = "user_policy"
#   user = aws_iam_user.user_1.name

#   policy = <<EOF
# {
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             "Sid": "VisualEditor0",
#             "Effect": "Allow",
#             "Action": [
#                 "rds:*",
#                 "ec2:*"
#             ],
#             "Resource": "*"
#         }
#     ]
# }
# EOF 
#}
# // this policy have full access to VPC. We have to comment any of one. 
# resource "aws_iam_user_policy_attachment" "user_1_P" {
#   user       = aws_iam_user.user_1.name
#   policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
  
# }
