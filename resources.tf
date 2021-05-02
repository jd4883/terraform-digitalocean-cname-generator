resource "digitalocean_record" "record" {
  for_each  = toset(var.records)
  domain = data.digitalocean_domain.domain.name
  name   = each.value
  type   = "CNAME"
  value  = "@"
  ttl    = var.ttl
}
