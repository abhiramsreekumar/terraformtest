resource "aws_instance" "testnew" {
  ami           = var.aminame
  instance_type = var.instancetyp
  key_name      = var.mynewkeys
  count         = 3


  tags = {
    name = "testec2${count.index}"
  }
}