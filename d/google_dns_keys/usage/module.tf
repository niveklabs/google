module "google_dns_keys" {
  source = "./google/d/google_dns_keys"

  managed_zone = null
  project      = null
}
