
terraform {
 backend "s3" {
<<<<<<< HEAD
   bucket         = "nameOfBucket" #put your bucket name here used for shared state
   key            = "nameOfFolderWhereShareFileIsToBeSaved/terraform.tfstate" # my thinking is each terraform resource built gets a folder
=======
   bucket         = "nameOfBucket"
   key            = "nameOfFolderWhereShareFileIsToBeSaved/terraform.tfstate"
>>>>>>> a265bff2d6aa76b2b4d3dc127d9774f3261ef762
   region         = "us-east-2" # no vars in backend files
   encrypt        = true
   dynamodb_table = "terraform-lock" #
 }
}