# Create Prod VPC
resource "aws_vpc" "prodvpc" {
    cidr_block = "192.168.0.0/24"
}

# create dev-subnet
resource "aws_subnet" "proddevsub" {
  vpc_id     = aws_vpc.prodvpc.id
  cidr_block = "192.168.0.0/26"
  availability_zone = "us-east-1a"

  tags = {
    Name = "dev-subnet"
  }
}