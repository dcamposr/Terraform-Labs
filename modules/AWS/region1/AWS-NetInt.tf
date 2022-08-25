
# ***************************************
# *** Network Interfaces ****************
# ***************************************
resource "aws_network_interface" "Public_NIC" {
    subnet_id = aws_subnet.Public-Subnet.id
    private_ip = aws_subnet.Private-Subnet.cidr_block
    security_groups = [aws_security_group.JumpHost-SG.id]

    tags = {
      Name = "Public NIC"
    }
}
resource "aws_network_interface" "EC2-Private" {
    subnet_id = aws_subnet.Private-Subnet.id
    private_ip = aws_subnet.Private-Subnet.cidr_block
    security_groups = [aws_security_group.PNet-MainVPC.id]

    tags = {
      Name = "Private NIC"
    }
}









