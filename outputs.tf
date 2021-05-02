output "records" { value = toset(digitalocean_record.record.*) }
