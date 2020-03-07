module "google_compute_vpn_tunnel" {
  source = "./google/r/google_compute_vpn_tunnel"

  description             = null
  ike_version             = null
  local_traffic_selector  = []
  name                    = null
  peer_ip                 = null
  project                 = null
  region                  = null
  remote_traffic_selector = []
  router                  = null
  shared_secret           = null
  target_vpn_gateway      = null

  timeouts = [{
    create = null
    delete = null
  }]
}
