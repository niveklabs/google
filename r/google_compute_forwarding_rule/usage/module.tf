module "google_compute_forwarding_rule" {
  source = "./google/r/google_compute_forwarding_rule"

  all_ports             = null
  backend_service       = null
  description           = null
  ip_address            = null
  ip_protocol           = null
  ip_version            = null
  load_balancing_scheme = null
  name                  = null
  network               = null
  network_tier          = null
  port_range            = null
  ports                 = []
  project               = null
  region                = null
  service_label         = null
  subnetwork            = null
  target                = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
