resource "aws_instance" "docker" {
  # for_each = var.instances
  for_each = toset(var.instances)
  # for_each = tomap(var.instances)
  ami           = var.ami_id
  # instance_type = each.value
  instance_type = "t3.micro"
  user_data = file("docker.sh")
  
  vpc_security_group_ids = [aws_security_group.allow_everything.id]

   root_block_device {
    volume_size = 60
    volume_type = "gp3" # or "gp2", depending on your preference
  }

  tags = {
    Name = each.key
    }
}

resource "aws_security_group" "allow_everything" {
  name        = var.sg_name
  description = var.sg_description

  ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
  }

  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
  }

  tags = var.sg_tags
}