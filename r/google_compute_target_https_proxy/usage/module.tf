module "google_compute_target_https_proxy" {
  source = "./google/r/google_compute_target_https_proxy"

  description      = null
  name             = null
  project          = null
  quic_override    = null
  ssl_certificates = []
  ssl_policy       = null
  url_map          = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
