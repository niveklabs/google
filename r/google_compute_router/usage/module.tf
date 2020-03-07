module "google_compute_router" {
  source = "./google/r/google_compute_router"

  description = null
  name        = null
  network     = null
  project     = null
  region      = null

  bgp = [{
    advertise_mode    = null
    advertised_groups = []
    advertised_ip_ranges = [{
      description = null
      range       = null
    }]
    asn = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
