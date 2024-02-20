 terraform {
  backend "s3" {
    bucket = "awsaurora"
    key    = "kobble-terraform-state"
    region = "ap-southeast-2"
  }
}
