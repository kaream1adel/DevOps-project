resource "aws_instance" "Master_node" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t3.medium"
  key_name = "cloud-key"
  associate_public_ip_address = true
  subnet_id = module.network.public-subnet1-id
  vpc_security_group_ids = [ aws_security_group.Kubernetes-security-group.id ]

  tags= {
    Name = "Master node"
  }

}

resource "aws_instance" "Worker_node" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t3.medium"
  key_name = "cloud-key"
  associate_public_ip_address = true
  subnet_id = module.network.public-subnet1-id
  vpc_security_group_ids = [ aws_security_group.Kubernetes-security-group.id ]

  tags= {
    Name = "Worker node"
  }

}

resource "aws_instance" "Monitoring_node" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  key_name = "cloud-key"
  associate_public_ip_address = true
  subnet_id = module.network.public-subnet1-id
  vpc_security_group_ids = [ aws_security_group.Kubernetes-security-group.id ]

  tags= {
    Name = "Monitoring node"
  }

}
