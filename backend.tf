 terraform {
  backend "s3" {
    bucket = "kobble-terraform-state"
    key    = "terraform.tfstate"
    region = "ap-southeast-2"
  }
}
