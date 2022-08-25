variable "vpc-name" {
    description = "VPCs creation at a given region"
    type = list
    default = ["Remote_VPC","Branch_VPC"]  
}

variable "az"{
    description = "Availability Zones"
    type = list
    default = ["us-west-1a","us-west-1c","ca-central-1a","ca-central-1b"]
}

variable "ec2-name" {
    description = "EC2 instances to be created"
    type = list
    default = ["VPC-B_EC2-1","VPC-C_EC2-1"]
}


variable "cidr-block" {
    type = list
    default = ["10.1.0.0/16","10.2.0.0/16"]
  
}

variable "vpcB-subnets" {
    type = list
    default = ["10.1.0.0/24","10.1.1.0/24","10.1.2.0/24"]
  
}

variable "vpcC-subnets" {
    type = list
    default = ["10.2.0.0/24","10.2.1.0/24","10.2.2.0/24"]
  
}

