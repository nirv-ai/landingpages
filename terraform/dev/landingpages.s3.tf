resource "aws_s3_bucket" "nirvai_landingpages_dev" {
  bucket = var.bucket_name
  acl    = var.bucket_acl

  tags = {
    Name      = var.bucket_name
    Terraform = "true"
  }
}
