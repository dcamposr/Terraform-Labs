
# ***************************************
# *** EC2 Instances creation **
# ***************************************

resource "aws_instance" "ec2-instance" {
    #ami = "ami-041a9937e9118f3f3"  # Enable it for use in central region
    ami = "ami-0e4d9ed95865f3b40"   # Disable it for use in central Region
    instance_type = "t2.micro"
    key_name = aws_key_pair.TF_keyPair.key_name

    tags = {
      Name = "${var.ec2-name[0]}"
    }

    network_interface {
      #network_interface_id = aws_network_interface.EC2-Private.id
      network_interface_id = aws_network_interface.EC2-Private.id
      device_index = 0
    }
}
resource "aws_instance" "ec2-instanceB" {
    #ami = "ami-041a9937e9118f3f3"  # Enable it for use in central region
    ami = "ami-0e4d9ed95865f3b40"   # Disable it for use in central Region
    instance_type = "t2.micro"
    key_name = aws_key_pair.TF_keyPair.key_name

    tags = {
      Name = "${var.ec2-name[1]}"
    }

    network_interface {
      #network_interface_id = aws_network_interface.EC2-Private.id
      network_interface_id = aws_network_interface.EC2-PrivateB.id
      device_index = 0
    }
}







