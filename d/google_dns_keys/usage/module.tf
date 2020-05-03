module "google_dns_keys" {
  source = "./modules/google/d/google_dns_keys"

  managed_zone = null
  project      = null
}
