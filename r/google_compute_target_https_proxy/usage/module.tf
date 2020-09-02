module "google_compute_target_https_proxy" {
  source = "./modules/google/r/google_compute_target_https_proxy"

  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # quic_override - (optional) is a type of string
  quic_override = null
  # ssl_certificates - (required) is a type of list of string
  ssl_certificates = []
  # ssl_policy - (optional) is a type of string
  ssl_policy = null
  # url_map - (required) is a type of string
  url_map = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
