
variable "aws_region" {default = "us-east-2"}
variable "aws_zones" {
 type        = "list"
 description = "List of availability zones to use"
 default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
}
