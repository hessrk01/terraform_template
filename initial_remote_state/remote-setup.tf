resource "aws_s3_bucket" "terraform-state" {
  bucket  = "backendBucketName" # the bucket in backend.tf
  acl     = "private"
  tags    = {
    Name        = "Terraform Bucket"
    Environment = "Dev"
  }
  versioning {
    enabled   = true
  }
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terraform-lock"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

provider "aws" {
  region = "us-east-2"
}