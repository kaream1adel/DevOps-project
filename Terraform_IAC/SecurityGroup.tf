resource "aws_security_group" "Kubernetes-security-group" {
  name        = "Kubernetes-security-group"
  description = "Allow ssh inbound traffic"
  vpc_id      = module.network.vpc-id

  tags = {
    Name = "Kubernetes-security-group"
  }
}


resource "aws_vpc_security_group_ingress_rule" "All_ingress" {
  security_group_id = aws_security_group.Kubernetes-security-group.id
  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 0
  ip_protocol = "-1"
  to_port     = 0
}