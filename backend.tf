
terraform {
 backend "s3" {
   bucket         = "hess-local-terraform"
   key            = "shared/terraform.tfstate"
   region         = "us-east-2"
   encrypt        = true
   dynamodb_table = "terraform-lock"
 }
