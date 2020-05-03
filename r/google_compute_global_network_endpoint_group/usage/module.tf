module "google_compute_global_network_endpoint_group" {
  source = "./modules/google/r/google_compute_global_network_endpoint_group"

  default_port          = null
  description           = null
  name                  = null
  network_endpoint_type = null
  project               = null

  timeouts = [{
    create = null
    delete = null
  }]
}
