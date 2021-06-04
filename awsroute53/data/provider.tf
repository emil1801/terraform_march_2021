provider "aws" {
  region = "us-east-1"
}

data "aws_availability_zones" "all" {}

output "AZ1" {
    value = data.aws_availability_zones.all.names[0]
}


resource "aws_instance" "web" {
  ami           = "ami-048f6ed62451373d9"
  instance_type = "t3.micro"
  availability_zone = data.aws_availability_zones.all.names[2]

  tags = {
    Name = "HelloWorld"
  }
}

