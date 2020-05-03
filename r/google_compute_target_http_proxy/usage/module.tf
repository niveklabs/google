module "google_compute_target_http_proxy" {
  source = "./modules/google/r/google_compute_target_http_proxy"

  description = null
  name        = null
  project     = null
  url_map     = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
