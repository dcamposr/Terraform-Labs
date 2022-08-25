# ***************************************
# *** Subnets association to the VPC ****
# ***************************************

resource "aws_subnet" "Private-Subnet" {
    vpc_id = aws_vpc.VPC-creation[0].id
    availability_zone = var.az[0] # Change AZ to [3] to use the Central Region
    cidr_block = var.vpcB-subnets[1]
    map_public_ip_on_launch = false

    tags = {
        Name = "PrivateSubnet ${var.vpc-name[0]}"
    }
}

resource "aws_subnet" "Private-SubnetB" {
    vpc_id = aws_vpc.VPC-creation[1].id
    availability_zone = var.az[1] # Change AZ to [3] to use the Central Region
    cidr_block = var.vpcC-subnets[1]
    map_public_ip_on_launch = false

    tags = {
        Name = "PrivateSubnet ${var.vpc-name[1]}"
    }
}



           
 








