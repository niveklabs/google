module "google_compute_region_target_https_proxy" {
  source = "./modules/google/r/google_compute_region_target_https_proxy"

  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # ssl_certificates - (required) is a type of list of string
  ssl_certificates = []
  # url_map - (required) is a type of string
  url_map = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
