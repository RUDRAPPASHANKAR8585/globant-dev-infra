################################################################
## shared
################################################################
variable "project_name" {
  type        = string
  description = "Name of the project."
  default     = "globant-eks-poc"
}

variable "namespace" {
  type        = string
  description = "Namespace for the resources."
  default     = "globant-chandrakala"
}

variable "region" {
  type        = string
  description = "AWS Region"
  default     = "ap-south-1"
}

variable "environment" {
  type        = string
  description = "ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT'"
  default     = "dev"
}


variable "cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}
