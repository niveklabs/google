module "google_dns_keys" {
  source = "./modules/google/d/google_dns_keys"

  # managed_zone - (required) is a type of string
  managed_zone = null
  # project - (optional) is a type of string
  project = null
}
