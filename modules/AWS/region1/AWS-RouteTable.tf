
#Custom Public Route Table Creation
resource "aws_route_table" "rt_public" {
    vpc_id = aws_vpc.VPC-creation[0].id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.InternetGW.id
    }
    
     tags = {
        Name = "RT-Public ${var.vpc-name[0]}"
     }
}
resource "aws_route_table_association" "rt_public_assoc" {
    subnet_id = aws_subnet.Public-Subnet.id
    route_table_id = aws_route_table.rt_public.id
    
}
/*
#Default route creation
resource "aws_route" "default_route" {
    route_table_id = aws_vpc.VPC-creation[0].id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.InternetGW.id
}

resource "aws_route_table_association" "rt_default_assoc" {
    subnet_id = aws_subnet.Public-Subnet.id
    route_table_id = aws_route.default_route.route_table_id
    
}*/

#Custom Private Route Table Creation
resource "aws_route_table" "rt_private" {
    vpc_id = aws_vpc.VPC-creation[0].id
    
     tags = {
        Name = "RT-Private ${var.vpc-name[0]}"
     }
}
resource "aws_route_table_association" "rt_private_assoc" {
    subnet_id = aws_subnet.Private-Subnet.id
    route_table_id = aws_route_table.rt_private.id
    
}













