module "google_compute_target_ssl_proxy" {
  source = "./modules/google/r/google_compute_target_ssl_proxy"

  # backend_service - (required) is a type of string
  backend_service = null
  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # proxy_header - (optional) is a type of string
  proxy_header = null
  # ssl_certificates - (required) is a type of list of string
  ssl_certificates = []
  # ssl_policy - (optional) is a type of string
  ssl_policy = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
