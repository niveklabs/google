module "google_compute_router_peer" {
  source = "./google/r/google_compute_router_peer"

  advertise_mode            = null
  advertised_groups         = []
  advertised_route_priority = null
  interface                 = null
  name                      = null
  peer_asn                  = null
  peer_ip_address           = null
  project                   = null
  region                    = null
  router                    = null

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
