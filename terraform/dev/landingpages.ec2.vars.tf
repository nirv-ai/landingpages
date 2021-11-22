variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.nano"
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "landingpages-dev"
}

variable "instance_ami" {
  description = "nginx ami"
  default     = "ami-040e09dfe8b89fc44"
  // description = "sentry ami"
  // default     = "ami-0111b36d34da58778"
}

variable "instance_ami_marketplace_url" {
  description = "nginx by bitnami"
  default     = "https://aws.amazon.com/marketplace/server/procurement?productId=f5774628-e459-457a-b058-3b513caefdee"
  // description = "sentry ami marketplace url"
  // default     = "https://aws.amazon.com/marketplace/pp/prodview-pmduc6rbmju76?ref_=aws-mp-console-subscription-detail"
}
