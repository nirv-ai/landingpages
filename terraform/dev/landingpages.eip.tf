resource "aws_eip_association" "landingpages" {
  instance_id   = aws_instance.landingpages[0].id
  allocation_id = aws_eip.landingpages.id
}

resource "aws_eip" "landingpages" {
  tags = {
    Terraform = "true"
    Name      = var.eip_name
  }
}
