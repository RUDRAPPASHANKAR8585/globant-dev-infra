data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["globant-chandrakala-${var.environment}-vpc"]
  }
}

data "aws_subnets" "private" {
  filter {
    name = "tag:Name"

    values = [
      "globant-chandrakala-private1-subnet-az1",
      "globant-chandrakala-private2-subnet-az2",
    ]
  }
}

data "aws_subnets" "public" {
  filter {
    name = "tag:Name"

    values = [
      "globant-chandrakala-public1-subnet-az1",
      "globant-chandrakala-public2-subnet-az2",
    ]
  }
}