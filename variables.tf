variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string
}

/*
variable "vpc_id" {
  description = "VPC ID for EKS"
  type        = string
}


variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs (for NAT, optional)"
  type        = list(string)
  default     = []
}
*/
variable "node_group_name" {
  description = "EKS Node Group Name"
  type        = string
}

variable "node_instance_type" {
  description = "EC2 instance type for nodes"
  type        = string
  default     = "t3.micro"
}

variable "desired_capacity" {
  description = "Desired node count"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum node count"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum node count"
  type        = number
  default     = 3
}

variable "eks_version" {
  description = "EKS version"
  type        = string
  default     = "1.33"
}
