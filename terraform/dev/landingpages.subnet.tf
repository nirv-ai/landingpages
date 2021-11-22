resource "aws_default_subnet" "default_az1" {
  availability_zone = var.default_az1

  tags = {
    Terraform = "true"
  }
}

resource "aws_default_subnet" "default_az2" {
  availability_zone = var.default_az2

  tags = {
    Terraform = "true"
  }
}
