# ***************************************************
# ***** IGW creatioion & attachment to the VPC ******
# ***************************************************
resource "aws_internet_gateway" "InternetGW" {
   vpc_id = aws_vpc.VPC-creation[0].id

   tags = {
    Name = "Main VPC IGW"
   }
}

