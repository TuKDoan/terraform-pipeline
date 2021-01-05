#===============================================================================
# EC2 Instance 
#===============================================================================
resource "aws_instance" "ec2" {
  ami           = "ami-0a0ad6b70e61be944"
  instance_type = "t2.micro"

  tags = {
    Name = "Pipeline-Worker"
  }

}

// Red Hat Enterprise Linux 8 (HVM)
// ami-03d64741867e7bb94

// Amazon Linux 2 (HVM)
// ami-0a0ad6b70e61be944