resource "aws_db_instance" "mydb" {
  allocated_storage           = 20
  identifier                  = var.dbid
  storage_type                = var.storage_type
  engine                      = var.dbengine
  engine_version              = var.enginever
  instance_class              = var.dbinstance_class
  username                    = var.dbusername
  manage_master_user_password = var.masterpass
  parameter_group_name        = var.parameter_group_name
  skip_final_snapshot         = var.skip_final_snapshot
}