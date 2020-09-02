module "google_compute_region_ssl_certificate" {
  source = "./modules/google/r/google_compute_region_ssl_certificate"

  # certificate - (required) is a type of string
  certificate = null
  # description - (optional) is a type of string
  description = null
  # name - (optional) is a type of string
  name = null
  # name_prefix - (optional) is a type of string
  name_prefix = null
  # private_key - (required) is a type of string
  private_key = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null

  timeouts = [{
    create = null
    delete = null
  }]
}
