# create a AWS EC2 instance using the terraform

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "testinstance2" {
  ami           = "ami-021e165d8c4ff761d"
  instance_type = "t2.micro"

  tags = {
    Name = "testinstance2"
  }
}
