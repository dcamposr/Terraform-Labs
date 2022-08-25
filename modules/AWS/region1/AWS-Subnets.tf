# ***************************************
# *** Subnets association to the VPC ****
# ***************************************
resource "aws_subnet" "Public-Subnet" {
    vpc_id = aws_vpc.VPC-creation[0].id
    availability_zone = var.az[0]
    cidr_block = var.vpcA-subnets[0]
    map_public_ip_on_launch = true

    tags = {
        Name = "PublicSubnet ${var.vpc-name[0]}"
    }
}

resource "aws_subnet" "Private-Subnet" {
    vpc_id = aws_vpc.VPC-creation[0].id
    availability_zone = var.az[1]
    cidr_block = var.vpcA-subnets[1]
    map_public_ip_on_launch = false

    tags = {
        Name = "PrivateSubnet ${var.vpc-name[0]}"
    }
}



           
 








