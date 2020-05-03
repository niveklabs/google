module "google_compute_target_ssl_proxy" {
  source = "./modules/google/r/google_compute_target_ssl_proxy"

  backend_service  = null
  description      = null
  name             = null
  project          = null
  proxy_header     = null
  ssl_certificates = []
  ssl_policy       = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
