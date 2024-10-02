resource "aws_internet_gateway" "igw-prod" {
  vpc_id = aws_vpc.tf-vpc.id

  tags = {
    Name = "igw-prod"
  }
}