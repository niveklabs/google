module "google_compute_ssl_certificate" {
  source = "./google/r/google_compute_ssl_certificate"

  certificate = null
  description = null
  name        = null
  name_prefix = null
  private_key = null
  project     = null

  timeouts = [{
    create = null
    delete = null
  }]
}
