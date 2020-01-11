
terraform {
 backend "s3" {
   bucket         = "nameOfBucket"
   key            = "nameOfFolderWhereShareFileIsToBeSaved/terraform.tfstate"
   region         = "us-east-2" # no vars in backend files
   encrypt        = true
   dynamodb_table = "terraform-lock"
 }
}