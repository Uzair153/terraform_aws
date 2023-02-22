resource "aws_instance" "S1" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.tag
  }
}