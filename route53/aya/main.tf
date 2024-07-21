resource "aws_route53_zone" "default" {
  name    = "aya.zzizily.com"
  comment = "aya.zzizily.com" 
  tags = {
    Name        = var.name
    Service     = var.service
    Environment = var.environment
  }
}

output "default" {
  value = aws_route53_zone.default.name_servers
}

resource "local_file" "default" {
  content  = join("\n", aws_route53_zone.default.name_servers)
  filename = "${path.module}/output.log"
}
