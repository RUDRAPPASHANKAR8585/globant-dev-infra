data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["${var.namespace}-${var.environment}-vpc"]
  }
}

data "aws_subnets" "private" {
  filter {
    name = "tag:Name"

    values = [
      "${var.namespace}-private1-subnet-az1",
      "${var.namespace}-private2-subnet-az2",
    ]
  }
}

data "aws_subnets" "public" {
  filter {
    name = "tag:Name"

    values = [
      "${var.namespace}-public1-subnet-az1",
      "${var.namespace}-public2-subnet-az2",
    ]
  }
}