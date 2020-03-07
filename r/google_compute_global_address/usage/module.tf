module "google_compute_global_address" {
  source = "./google/r/google_compute_global_address"

  address       = null
  address_type  = null
  description   = null
  ip_version    = null
  name          = null
  network       = null
  prefix_length = null
  project       = null
  purpose       = null

  timeouts = [{
    create = null
    delete = null
  }]
}
