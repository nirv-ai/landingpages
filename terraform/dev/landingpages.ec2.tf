resource "aws_instance" "landingpages" {
  count = 2

  ami           = var.instance_ami
  instance_type = var.instance_type

  vpc_security_group_ids = [
    aws_security_group.landingpages.id
  ]

  tags = {
    Name           = var.instance_name
    Terraform      = "true"
    MarketplaceUrl = var.instance_ami_marketplace_url
  }
}

// data "aws_ami" "ubuntu" {
//   most_recent = true

//   filter {
//     name   = "name"
//     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
//   }

//   filter {
//     name   = "virtualization-type"
//     values = ["hvm"]
//   }

//   # Canonical
//   owners = ["099720109477"]
// }

// resource "aws_instance" "ubuntu" {
//   ami           = data.aws_ami.ubuntu.id
//   instance_type = var.instance_type

//   tags = {
//     Name                 = var.instance_name
//     "Linux Distribution" = var.linux_distribution
//   }
// }
