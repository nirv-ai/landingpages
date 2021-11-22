variable "bucket_name" {
  description = "AWS bucket name"
  # numbers & dashes only
  default = "nirvai-landingpages-dev"
}

variable "bucket_acl" {
  description = "AWS S3 bucket ACL"
  default     = "private"
}
