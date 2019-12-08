variable "access_key" {}
variable "secret_key" {}

provider "aws" {
  region  = "us-east-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

# terraform {
#   backend "s3" {  
#     key    = "terraform.tfstate"
#     region = "us-east-1"
#   }
# }

resource "aws_s3_bucket" "bucket" {
  bucket = "vbb1-test-bucket"
}
