resource "aws_instance" "testnew" {
  ami           = var.aminame
  instance_type = var.instancetyp
  key_name      = var.mynewkeys


  tags = {
    name = "testec2"
  }
}
