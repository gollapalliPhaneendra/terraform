provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "terraform-instance" {
    ami = "ami-0ad21ae1d0696ad58"
    instance_type = "t2.micro"
  
   tags = {
     Name = " Ec2 Instance"
    }
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "statefile-s3-lock21314"
  
}

resource "aws_dynamodb_table" "terraform_lock" {
    name = "terraform-lock"
    billing_mode = "PAY_PER_REQEST"
    hash_key = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
}    