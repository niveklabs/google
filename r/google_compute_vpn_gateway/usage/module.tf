module "google_compute_vpn_gateway" {
  source = "./modules/google/r/google_compute_vpn_gateway"

  description = null
  name        = null
  network     = null
  project     = null
  region      = null

  timeouts = [{
    create = null
    delete = null
  }]
}
