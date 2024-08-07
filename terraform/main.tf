provider "aws" {
  region = "us-east-1"  # Change to your preferred region
}

resource "aws_instance" "instance1" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }

  # Optionally, you can include more configuration like key pairs, security groups, etc.
}

output "instance_id" {
  value = aws_instance.example.id
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
