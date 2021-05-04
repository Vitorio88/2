resource "aws_instance" "ubuntu" {
  ami           = "ami-090717c950a5c34d3"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.lesson9-subnet-public-3.id

  vpc_security_group_ids = [aws_security_group.lesson9-all.id]

  key_name = "example"

  tags = {
    "Name" = "ubuntu"
  }

  depends_on = [
    aws_db_instance.lesson9-rds,
  ]
}