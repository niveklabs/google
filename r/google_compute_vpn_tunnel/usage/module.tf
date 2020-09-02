module "google_compute_vpn_tunnel" {
  source = "./modules/google/r/google_compute_vpn_tunnel"

  # description - (optional) is a type of string
  description = null
  # ike_version - (optional) is a type of number
  ike_version = null
  # local_traffic_selector - (optional) is a type of set of string
  local_traffic_selector = []
  # name - (required) is a type of string
  name = null
  # peer_ip - (optional) is a type of string
  peer_ip = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # remote_traffic_selector - (optional) is a type of set of string
  remote_traffic_selector = []
  # router - (optional) is a type of string
  router = null
  # shared_secret - (required) is a type of string
  shared_secret = null
  # target_vpn_gateway - (optional) is a type of string
  target_vpn_gateway = null

  timeouts = [{
    create = null
    delete = null
  }]
}
