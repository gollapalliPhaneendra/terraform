terraform {
  backend "s3" {
    bucket = "devansh1231"
    key    = "phani/terrafrom.tfstate"
    region = "ap-south-1"
    encrypt = true
    dynamodb_table = "terraform_lock"
  }
}
