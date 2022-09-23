output "IP" {
  value       = "${aws_instance.web-op.public_ip}"
}

output "ID" {
  value       = "${aws_instance.web-op.id}"
}

output "PIP" {
  value       = "${aws_instance.web-op.private_ip}"
}

output "KEY" {
  value       = "${aws_instance.web-op.key_name}"
}


output "ARN" {
  value       = "${aws_instance.web-op.arn}"
}

output "CLUSTER" {
  value       = "${aws_route53_record.cluster.name}"
}

output ""