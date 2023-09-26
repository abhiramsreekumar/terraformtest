resource "aws_instance" "testnew" {
  ami           = "ami-04cb4ca688797756f"
  instance_type = "t2.micro"
  key_name      = "mynewkey"


  tags = {
    name = "testec1"
  }
}
