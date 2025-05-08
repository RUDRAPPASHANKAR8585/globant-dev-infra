terraform {
  backend "s3" {
    region            = "ap-south-1"
    key               = "network/new/terraform.tfstate"
    bucket            = "globant-poc-terraform-statefile-ap-south-1"
    dynamodb_table    = "globant-eks-poc-terraformstate-lock"
    encrypt           = true
  }
}
