data "terraform_remote_state" "vpc" {
  backend = "s3" 
  config = {
    bucket = "dk05june-terraform-state-file"
    key = "vpc/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "dk1_table"
  }
  
}

data "aws_ami" "dkami" {
  
  most_recent      = true
  owners           = ["584201714941"]

  filter {
    name   = "name"
    values = ["vsf-server-*"]
  }
}

