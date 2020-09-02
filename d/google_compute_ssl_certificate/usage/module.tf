module "google_compute_ssl_certificate" {
  source = "./modules/google/d/google_compute_ssl_certificate"

  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
}
