// resource "aws_autoscaling_group" "landingpages" {
//   name = var.autoscaling_group_name
//   desired_capacity = 1
//   max_size         = 1
//   min_size         = 1

// have to match subnet azs
//   availability_zones = [
//     var.default_az1,
//     var.default_az2
//   ]

// have to match subnet ids
// vpc_zone_identifier = [
//   aws_default_subnet.default_az1.id,
//   aws_default_subnet.default_az2.id
// ]

//   launch_template {
//     id      = aws_launch_template.landingpages.id
//     version = "$Latest"
//   }

//   // health_check_grace_period = 300
//   // health_check_type         = "ELB"
//   // force_delete              = true
//   // launch_configuration      = aws_launch_configuration.landingpages.name
//   // load_balancers            = ["${aws_elb.landingpages.name}"]
//   // vpc_zone_identifier       = ["${aws_subnet.main.id}"]
// }
