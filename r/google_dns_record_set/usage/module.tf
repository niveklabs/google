module "google_dns_record_set" {
  source = "./modules/google/r/google_dns_record_set"

  # managed_zone - (required) is a type of string
  managed_zone = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # rrdatas - (required) is a type of list of string
  rrdatas = []
  # ttl - (required) is a type of number
  ttl = null
  # type - (required) is a type of string
  type = null
}
