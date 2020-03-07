module "google_compute_network_endpoint_group" {
  source = "./google/r/google_compute_network_endpoint_group"

  default_port          = null
  description           = null
  name                  = null
  network               = null
  network_endpoint_type = null
  project               = null
  subnetwork            = null
  zone                  = null

  timeouts = [{
    create = null
    delete = null
  }]
}
