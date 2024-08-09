provider "aws" {
region = "us-east-1"  # Change to your preferred region
}

resource "aws_instance" "instance1" {
ami           = "ami-04a81a99f5ec58529"  # Replace with a valid AMI ID for your region
instance_type = "t2.micro"
tags = { Name = "instance1-inst"
 }
}

output "instance_id" {
value = aws_instance.instance1.id
}

output "instance_public_ip" {
value = aws_instance.instance1.public_ip
}
