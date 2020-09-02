module "google_dns_managed_zone" {
  source = "./modules/google/d/google_dns_managed_zone"

  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
}
