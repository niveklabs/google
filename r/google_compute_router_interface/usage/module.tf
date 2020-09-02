module "google_compute_router_interface" {
  source = "./modules/google/r/google_compute_router_interface"

  # interconnect_attachment - (optional) is a type of string
  interconnect_attachment = null
  # ip_range - (optional) is a type of string
  ip_range = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # router - (required) is a type of string
  router = null
  # vpn_tunnel - (optional) is a type of string
  vpn_tunnel = null

  timeouts = [{
    create = null
    delete = null
  }]
}
