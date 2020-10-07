provider "aws" {
  region     = "ap-southeast-1"
  access_key = "AKIA5EA3RZNLXINYY3HF"
  secret_key = "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"
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "myvpc"
  }
}

resource "aws_subnet" "mysn1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "mysn1"
  }
}