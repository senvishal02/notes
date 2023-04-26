resource "aws_instance" "prodec2" {
  ami                     = "ami-02396cdd13e9a1257"
  instance_type           = "t2.micro"
  key_name = aws_key_pair.deployer.id
  subnet_id = aws_subnet.proddevsub.id

   tags = {
    Name = "server1"
  }
 }

 resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = aws_security_group.prodsg.id
  network_interface_id = aws_instance.prodec2.primary_network_interface_id
}