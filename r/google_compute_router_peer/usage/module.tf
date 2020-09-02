module "google_compute_router_peer" {
  source = "./modules/google/r/google_compute_router_peer"

  # advertise_mode - (optional) is a type of string
  advertise_mode = null
  # advertised_groups - (optional) is a type of list of string
  advertised_groups = []
  # advertised_route_priority - (optional) is a type of number
  advertised_route_priority = null
  # interface - (required) is a type of string
  interface = null
  # name - (required) is a type of string
  name = null
  # peer_asn - (required) is a type of number
  peer_asn = null
  # peer_ip_address - (required) is a type of string
  peer_ip_address = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # router - (required) is a type of string
  router = null

  advertised_ip_ranges = [{
    description = null
    range       = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
