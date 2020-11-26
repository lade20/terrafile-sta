provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}

terraform {
    backend "s3" {
        bucket = "terra-simple-bucket"
        key    = "terra-simple1.tfstate"
        region = "eu-west-1"
    }
}

resource "aws_instance" "first_task" {
  ami        = "ami-05626efdd7bf03b47"
  instance_type = "t2.micro"
  key_name = "devop22"
}
    