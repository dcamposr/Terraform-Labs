# ***************************************
# ****** First VPC creation tasks *******
# ***************************************
resource "aws_vpc" "VPC-creation" {
    cidr_block = var.cidr-block[count.index]
    instance_tenancy = "default"
    count = 2

    tags = {
        Name = "${var.vpc-name[count.index]}"

    }  
}
