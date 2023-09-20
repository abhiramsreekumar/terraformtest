output "security_group_id" {
  value = aws_security_group.test-sg.id
}
output "mys3" {
  value = aws_s3_bucket.mybucket.bucket_domain_name
}
output "rds" {
  value = aws_db_instance.mydb.endpoint
}