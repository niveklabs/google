module "google_compute_router" {
  source = "./modules/google/r/google_compute_router"

  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # network - (required) is a type of string
  network = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null

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
