# resource "aws_route53_record" "record" {
#   for_each = aws_instance.roboshop
#   zone_id = var.zone_id
#   name    = "${each.key}.${var.domain_name}"
#   type    = "A"
#   ttl     = "1"
# #   records = [each.value.private_ip, each.value.public_ip]
#   records = [each.key == "frontend" ? each.value.public_ip : each.value.private_ip]
# }