# ***************************************
# *** Public Key creation & Mapping **
# ***************************************
# RSA key of size 4096 bits - create a private & public key
resource "tls_private_key" "TF_keyPair" {
  algorithm = "RSA"
  rsa_bits  = 4096

}

# Create a private & public key and store local
resource "local_file" "TF_Key" {
    content  = tls_private_key.TF_keyPair.private_key_pem
    filename = "../TF_KeyPair.pem"
    file_permission = "600"
    
}

resource "aws_key_pair" "TF_keyPair" {
    key_name = "TF_keyPair.pem"
    public_key = tls_private_key.TF_keyPair.public_key_openssh

}