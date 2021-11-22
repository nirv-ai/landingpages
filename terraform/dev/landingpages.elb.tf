resource "aws_elb" "landingpages" {
  name      = var.elb_name
  instances = aws_instance.landingpages[*].id

  subnets = [
    aws_default_subnet.default_az1.id,
    aws_default_subnet.default_az2.id
  ]

  security_groups = [
    aws_security_group.landingpages.id
  ]

  // availability_zones = ["us-west-2a"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  tags = {
    Name      = var.elb_name
    Terraform = "true"
  }
}
