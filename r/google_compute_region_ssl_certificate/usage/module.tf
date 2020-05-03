module "google_compute_region_ssl_certificate" {
  source = "./modules/google/r/google_compute_region_ssl_certificate"

  certificate = null
  description = null
  name        = null
  name_prefix = null
  private_key = null
  project     = null
  region      = null

  timeouts = [{
    create = null
    delete = null
  }]
}
