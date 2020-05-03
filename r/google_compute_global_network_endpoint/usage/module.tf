module "google_compute_global_network_endpoint" {
  source = "./modules/google/r/google_compute_global_network_endpoint"

  fqdn                          = null
  global_network_endpoint_group = null
  ip_address                    = null
  port                          = null
  project                       = null

  timeouts = [{
    create = null
    delete = null
  }]
}
