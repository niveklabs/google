module "google_compute_target_tcp_proxy" {
  source = "./google/r/google_compute_target_tcp_proxy"

  backend_service = null
  description     = null
  name            = null
  project         = null
  proxy_header    = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
