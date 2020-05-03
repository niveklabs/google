module "google_compute_address" {
  source = "./modules/google/r/google_compute_address"

  address      = null
  address_type = null
  description  = null
  name         = null
  network_tier = null
  project      = null
  purpose      = null
  region       = null
  subnetwork   = null

  timeouts = [{
    create = null
    delete = null
  }]
}
