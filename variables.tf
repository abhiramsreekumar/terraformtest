variable "reg" {
  type        = string
  description = "AWS region"

}
variable "profile" {
  type        = string
  description = "AWS Profile"

}
variable "mynewkeys" {
  type        = string
  description = "Secret key to AWS console"
}
variable "aminame" {
  type        = string
  description = "AMI Name"

}
variable "instancetyp" {
  type        = string
  description = "Instance type of EC2"
}
variable "instancename" {
  type        = string
  description = "Name of instance"
}
variable "bucketname" {
  type        = string
  description = "Name of bucket"

}
variable "dbstorage" {
  type        = number
  description = "Size of RDS"

}
variable "dbid" {
  type        = string
  description = "Identifier of DB"

}
variable "storage_type" {
  type        = string
  description = "type of storage used"

}
variable "dbengine" {
  type        = string
  description = "Engine of DB"

}
variable "enginever" {
  type        = string
  description = "Version of Engine used"

}
variable "dbinstance_class" {
  type        = string
  description = "Type of DB used"

}
variable "parameter_group_name" {
  type = string

}
variable "dbusername" {
  type = string
  
}
variable "masterpass" {
  type = bool
  
}
variable "skip_final_snapshot" {
  type = bool
  
}