
# ***************************************
# *** Network Interfaces ****************
# ***************************************

resource "aws_network_interface" "EC2-Private" {
    subnet_id = aws_subnet.Private-Subnet.id
    private_ip = aws_subnet.Private-Subnet.cidr_block
    security_groups = [aws_security_group.PNet-RemoteVPC.id]

    tags = {
      Name = "Private NIC"
    }
}

resource "aws_network_interface" "EC2-PrivateB" {
    subnet_id = aws_subnet.Private-SubnetB.id
    private_ip = aws_subnet.Private-SubnetB.cidr_block
    security_groups = [aws_security_group.PNet-BranchVPC.id]

    tags = {
      Name = "Private NIC"
    }
}








