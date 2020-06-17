provider "aws" {
  profile = var.profile
  region  = var.region
}

# VPC for infrastructure
resource "aws_vpc" "tf_vpc" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
  tags = {
    "name" = var.vpc_name
  }
}

# Subnet 1 for VPC
resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.tf_vpc.id
  cidr_block              = var.cidrs[0]
  availability_zone       = join("", [var.region, var.azs[0]])
  map_public_ip_on_launch = true
  tags = {
    "name" = "subnet1"
  }
}

# Subnet 2 for VPC
resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.tf_vpc.id
  cidr_block              = var.cidrs[1]
  availability_zone       = join("", [var.region, var.azs[1]])
  map_public_ip_on_launch = true
  tags = {
    "name" = "subnet2"
  }
}

# Subnet 3 for VPC
resource "aws_subnet" "subnet3" {
  vpc_id                  = aws_vpc.tf_vpc.id
  cidr_block              = var.cidrs[2]
  availability_zone       = join("", [var.region, var.azs[2]])
  map_public_ip_on_launch = true
  tags = {
    "name" = "subnet3"
  }
}
