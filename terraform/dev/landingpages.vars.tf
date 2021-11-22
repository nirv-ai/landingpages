# ALL sensitive vars should be defined in the UI
# ^ or specified as environment variables

variable "aws_profile" {
  description = "AWS profile"
  default     = "nirv-terraform"
}

// variable "AWS_ACCESS_KEY_ID" {
//   description = "your aws access key ID"
//   default     = ""
// }

// variable "AWS_SECRET_ACCESS_KEY" {
//   description = "your aws secret access key"
//   default     = ""
// }
