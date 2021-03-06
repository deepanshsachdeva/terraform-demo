variable "profile" {
  description = "AWS profile name for CLI"
  default     = "default"
}

variable "region" {
  description = "AWS region for infrastructure."
  default     = "us-east-1"
}

variable "amis" {
  type = map
}

variable "vpc_name" {
  description = "VPC name tag value."
  default     = "vpc"
}

variable "cidr_block" {
  description = "CIDR block for VPC."
  default     = "10.0.0.0/16"
}

variable "cidrs" {
  description = "CIDR blocks for subnets."
  default     = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
}

variable "azs" {
  description = "Availability zones for subnets."
  default     = ["a", "b", "c"]
}

variable "db_storage_size" {
  description = "Availability zones for subnets."
  type        = number
  default     = 20
}

variable "db_instance_class" {
  description = "Instance class for RDS"
  default     = "db.t3.micro"
}

variable "db_engine" {
  description = "DB engine for RDS"
  default     = "mysql"
}

variable "db_engine_version" {
  description = "DB engine version for RDS"
  default     = "5.7.22"
}

variable "db_name" {
  description = "DB name"
  default     = "testdb"
}

variable "db_username" {
  description = "DB username"
  default     = "dbuser"
}

variable "db_password" {
  description = "DB password"
  default     = "DBSummer2020"
}

variable "db_public_access" {
  description = "DB public accessibility"
  type        = bool
  default     = false
}

variable "db_multiaz" {
  description = "DB multi AZ"
  type        = bool
  default     = false
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_vol_type" {
  description = "EC2 volume type"
  type        = string
  default     = "gp2"
}

variable "instance_vol_size" {
  description = "EC2 volume size"
  type        = number
  default     = 20
}

variable "instance_subnet" {
  description = "EC2 subnet serial"
  type        = number
  default     = 1
}

variable "key_name" {
  description = "Name of key"
  type        = string
}