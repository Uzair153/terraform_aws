
resource "aws_instance" "S1" {
  ami           = "ami-0f8ca728008ff5af4"
  instance_type = "t2.micro"

  tags = {
    Name = "Server 1"
  }
}
// create aws instance
resource "aws_instance" "S2" {
  ami           = "ami-0f8ca728008ff5af4"
  instance_type = "t2.micro"

  tags = {
    Name = "Server 2"
  }
}

# resource "aws_instance" "S3" {
#   ami           = "ami-0f8ca728008ff5af4"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "Server 3"
#   }
# }