terraform {
  backend "s3" {
     bucket         = "tf-state-file-kaream"
    key            = "arn:aws:s3:::prod-s3-devopsproject"
    region         = "us-east-1"
    dynamodb_table = "tf-dynamodb"
    
  }
}



module "network" {
    source="C:\\Kaream\\ASU\\Learning\\DevOps_Project\\Terraform_IAC\\Networking"
 # any inputs will be passed to the module 

    vpc-name = var.vpc-destination
    region-name = var.vpc-region-name
}