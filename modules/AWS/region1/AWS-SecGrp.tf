
# ***************************************
# *** EC2 Instances Sec Group creation **
# ***************************************
resource "aws_security_group" "JumpHost-SG"{
    name = "Allow_ssh"
    description = "Allow SSH traffic"
    vpc_id = aws_vpc.VPC-creation[0].id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0", "${chomp(data.http.my_public_ip.body)}/32"]     
    }

    egress  {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "Allow_SSH"
    }
    
}
resource "aws_security_group" "PNet-MainVPC"{
    name = "Allow SSH & ICMP Traffic"
    description = "Allow SSH/ICMP traffic"
    vpc_id = aws_vpc.VPC-creation[0].id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["10.0.0.0/16", "10.1.0.0/16", "10.2.0.0./16"]        
    }

    ingress {
        from_port = 8
        to_port = 0
        protocol = "icmp"
        cidr_blocks = ["10.0.0.0/16", "10.1.0.0/16", "10.2.0.0./16"]        
    }

    egress  {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "Allow_SSH-ICMP"
    }
    
}




