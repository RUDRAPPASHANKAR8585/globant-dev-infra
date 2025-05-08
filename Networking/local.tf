
locals {


  subnet_map = {
    "${namespace}-public1-subnet-az1" = {
      name                    = "${namespace}-public1-subnet-az1"
      cidr_block              = "10.0.0.0/19"
      availability_zone       = "ap-south-1a"
      nat_gateway_name        = "${namespace}-az1-ngtw01"
      attach_nat_gateway      = false
      create_nat_gateway      = true
      attach_internet_gateway = true
    },
    "${namespace}-public2-subnet-az2" = {
      name                    = "${namespace}-public2-subnet-az2"
      cidr_block              = "10.0.32.0/19"
      availability_zone       = "ap-south-1b"
      nat_gateway_name        = "${namespace}-az2-ngtw01"
      attach_nat_gateway      = false
      create_nat_gateway      = true
      attach_internet_gateway = true
    },
    "${namespace}-private1-subnet-az1" = {
      name                    = "${namespace}-private1-subnet-az1"
      cidr_block              = "10.0.128.0/19"
      availability_zone       = "ap-south-1a"
      nat_gateway_name        = "${namespace}-az1-ngtw01"
      attach_nat_gateway      = true
      create_nat_gateway      = false
      attach_internet_gateway = false
    },
    "${namespace}-private2-subnet-az2" = {
      name                    = "${namespace}-private2-subnet-az2"
      cidr_block              = "10.0.160.0/19"
      availability_zone       = "ap-south-1b"
      nat_gateway_name        = "${namespace}-az2-ngtw01"
      attach_nat_gateway      = true
      create_nat_gateway      = false
      attach_internet_gateway = false
    }
  }
}