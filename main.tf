provider "aws" {
  region ="us-east-2"
}
resource "aws_instance" "GitAction_Demo" {
  ami           = "ami-0e5497a77ef21b5ac"
  instance_type = "t3.micro"

  tags = {
    Name = "GitAction-Demo"
  }
}
resource "aws_s3_bucket" "Chin2-Mistry-GitAction-Demo-Bucket123456" {
  bucket = "Chin2-Mistry-GitAction-Demo-Bucket123456"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
