
terraform {
 backend "s3" {
   bucket         = "backendBucketName" #put your bucket name here used for shared state
   key            = "nameOfFolderWhereShareFileIsToBeSaved/terraform.tfstate" # my thinking is each terraform resource built gets a folder or leave everything in one folder and change tfstate file name
   region         = "us-east-2" # no vars in backend files
   encrypt        = true
   dynamodb_table = "terraform-lock" #
 }
}