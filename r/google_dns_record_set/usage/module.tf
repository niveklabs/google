module "google_dns_record_set" {
  source = "./google/r/google_dns_record_set"

  managed_zone = null
  name         = null
  project      = null
  rrdatas      = []
  ttl          = null
  type         = null
}
