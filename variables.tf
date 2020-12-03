variable "domain" { type = string }
variable "records" { type = list(string) }

variable "ttl" {
  type    = number
  default = 3600
}

