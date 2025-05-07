
locals {

  prefix = "globant"

  subnet_map = {
    "${local.prefix}-public1-subnet-az1" = {
      name                    = "${local.prefix}-public1-subnet-az1"
      cidr_block              = "10.0.0.0/19"
      availability_zone       = "ap-south-1a"
      nat_gateway_name        = "${local.prefix}-az1-ngtw01"
      attach_nat_gateway      = false
      create_nat_gateway      = true
      attach_internet_gateway = true
    },
    "${local.prefix}-public2-subnet-az2" = {
      name                    = "${local.prefix}-public2-subnet-az2"
      cidr_block              = "10.0.32.0/19"
      availability_zone       = "ap-south-1b"
      nat_gateway_name        = "${local.prefix}-az2-ngtw01"
      attach_nat_gateway      = false
      create_nat_gateway      = true
      attach_internet_gateway = true
    },
    "${local.prefix}-private1-subnet-az1" = {
      name                    = "${local.prefix}-private1-subnet-az1"
      cidr_block              = "10.0.128.0/19"
      availability_zone       = "ap-south-1a"
      nat_gateway_name        = "${local.prefix}-az1-ngtw01"
      attach_nat_gateway      = true
      create_nat_gateway      = false
      attach_internet_gateway = false
    },
    "${local.prefix}-private2-subnet-az2" = {
      name                    = "${local.prefix}-private2-subnet-az2"
      cidr_block              = "10.0.160.0/19"
      availability_zone       = "ap-south-1b"
      nat_gateway_name        = "${local.prefix}-az2-ngtw01"
      attach_nat_gateway      = true
      create_nat_gateway      = false
      attach_internet_gateway = false
    }
  }
}