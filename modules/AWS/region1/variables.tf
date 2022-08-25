variable "vpc-name" {
    description = "VPCs creation at a given region"
    type = list
    default = ["Main_VPC","Remote_VPC"]  
}

variable "az"{
    description = "Availability Zones"
    type = list
    default = ["us-west-1a","us-west-1c","ca-central-1a","ca-central-1b"]
}

variable "ec2-name" {
    description = "EC2 instances to be created"
    type = list
    default = ["JumpHost","VPC-A_EC2-1","VPC-A_EC2-2","VPC-B_EC2-1"]
}


variable "cidr-block" {
    type = list
    default = ["10.0.0.0/16","10.1.0.0/16"]
  
}

variable "vpcA-subnets" {
    type = list
    default = ["10.0.0.0/24","10.0.1.0/24"]
  
}


