module "google_compute_route" {
  source = "./modules/google/r/google_compute_route"

  # description - (optional) is a type of string
  description = null
  # dest_range - (required) is a type of string
  dest_range = null
  # name - (required) is a type of string
  name = null
  # network - (required) is a type of string
  network = null
  # next_hop_gateway - (optional) is a type of string
  next_hop_gateway = null
  # next_hop_ilb - (optional) is a type of string
  next_hop_ilb = null
  # next_hop_instance - (optional) is a type of string
  next_hop_instance = null
  # next_hop_instance_zone - (optional) is a type of string
  next_hop_instance_zone = null
  # next_hop_ip - (optional) is a type of string
  next_hop_ip = null
  # next_hop_vpn_tunnel - (optional) is a type of string
  next_hop_vpn_tunnel = null
  # priority - (optional) is a type of number
  priority = null
  # project - (optional) is a type of string
  project = null
  # tags - (optional) is a type of set of string
  tags = []

  timeouts = [{
    create = null
    delete = null
  }]
}
