
# resource "aws_instance" "S1" {
#   ami           = "ami-0f8ca728008ff5af4"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "Server 1"
#   }
# }
// Here I use a module ,present in module directory, to create ec2 instance. 
module "ec2_module" {
  source = "./modules/webserver"
  ami_id = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  tag = "${var.tag}"

}