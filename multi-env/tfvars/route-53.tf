# resource "aws_route53_record" "name" {
#   ttl = 1
#   type = "A"
#   allow_overwrite = true
#   zone_id = local.zone_id
#   records = [aws_instance.name[count.index].private_ip]
#   name = "${var.instances[count.index]}.${var.domain_name}"
   
# }