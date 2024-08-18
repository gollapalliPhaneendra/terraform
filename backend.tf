terraform {
  backend "s3" {
    bucket = "terraform-lockfile-gollapalli-s3-demo-abc"
    region = "ap-south-1"
    key = "phani/terraform.tfstate"
    encrypt = true
    dynamodb_table = "terraform-lock"
  }
}