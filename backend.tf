
terraform {
 backend "s3" {
   bucket         = "nameOfBucket" #put your bucket name here used for shared state
   key            = "nameOfFolderWhereShareFileIsToBeSaved/terraform.tfstate" # my thinking is each terraform resource built gets a folder
   region         = "us-east-2" # no vars in backend files
   encrypt        = true
   dynamodb_table = "terraform-lock" #
 }
}