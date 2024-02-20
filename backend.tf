 terraform {
  backend "s3" {
    bucket = "awsaurora"
    key    = "terraform.tfstate"
    region = "ap-southeast-2"
  }
}