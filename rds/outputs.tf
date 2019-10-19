output "addrees" {
  value = "${aws_db_instance.rds_database_instance.*.addrees}"
}

output "arn" {
  value = "${aws_db_instance.rds_database_instance.*.arn}"
}

output "id" {
  value = "${aws_db_instance.rds_database_instance.*.id}"
}

output "name" {
  value = "${aws_db_instance.rds_database_instance.*.name}"
}

output "port" {
  value = "${aws_db_instance.rds_database_instance.*.port}"
}

output "username" {
  value = "${aws_db_instance.rds_database_instance.*.username}"
}
