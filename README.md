
# Terraform template

## Download Terraform
https://askubuntu.com/questions/983351/how-to-install-terraform-in-ubuntu

1. sudo apt-get install unzip
1. https://www.terraform.io/downloads.html - 0.12.19
1. wget https://releases.hashicorp.com/terraform/0.12.19/terraform_0.12.19_linux_amd64.zip
1. unzip terraform_0.12.19_linux_amd64.zip
1. sudo mv terraform /usr/local/bin/
1. terraform --version

## Download AWS CLI
Install v2

1. curl "https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
1. unzip awscliv2.zip
1. sudo ./aws/install

## Install terraform extensions on editor
Visual Code - https://github.com/mauve/vscode-terraform.git

## Terraform Backends
https://www.terraform.io/docs/backends/index.html

1. S3 bucket - for state file
1. Database - for locking of state

## AWS Configure
#### Terraform backeds loaded before vars loaded. Terraform can read from ~/.aws/credentials
aws configure --profile terraform

terraform explains using shared credentials - https://www.terraform.io/docs/providers/aws/index.html#shared-credentials-file
reddit explains more - https://www.reddit.com/r/Terraform/comments/disjaf/terraform_not_finding_aws_credentials_file/




