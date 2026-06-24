provider "aws" {
region = "ca-central-1"
}

resource "aws_s3_bucket" "test" {
bucket = "githubactions-bucket"
}

resource "aws_instance" "my_server" {
  ami           = "ami-0d19d7a9bc91b3550" 
  instance_type = "t3.micro"             

  tags = {
    Name = "Terraform-Managed-EC2"
  }
}
