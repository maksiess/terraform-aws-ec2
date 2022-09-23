# resource "aws_route53_record" "cluster" {
#   zone_id = "Z2WS55GJ0XKB7P"
#   name    = "${var.cluster}.zoom.us"
#   type    = "A"
#   ttl     = "60"
#   records = ["${aws_instance.web.public_ip}"]
# }