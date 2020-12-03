resource "digitalocean_record" "record" {
  count  = length(var.records)
  domain = data.digitalocean_domain.domain.name
  name   = var.records[count.index]
  type   = "CNAME"
  value  = "@"
  ttl    = var.ttl
}
