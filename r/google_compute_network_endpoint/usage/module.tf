module "google_compute_network_endpoint" {
  source = "./google/r/google_compute_network_endpoint"

  instance               = null
  ip_address             = null
  network_endpoint_group = null
  port                   = null
  project                = null
  zone                   = null

  timeouts = [{
    create = null
    delete = null
  }]
}
