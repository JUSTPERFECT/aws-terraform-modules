output "address" {
  value = "${element(aws_db_instance.rds_database_instance.*.address,0)}"
}

output "arn" {
  value = "${element(aws_db_instance.rds_database_instance.*.arn,0)}"
}

output "id" {
  value = "${element(aws_db_instance.rds_database_instance.*.id,0)}"
}

output "name" {
  value = "${element(aws_db_instance.rds_database_instance.*.name,0)}"
}

output "port" {
  value = "${element(aws_db_instance.rds_database_instance.*.port,0)}"
}

output "username" {
  value = "${element(aws_db_instance.rds_database_instance.*.username,0)}"
}
