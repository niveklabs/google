module "google_compute_route" {
  source = "./google/r/google_compute_route"

  description            = null
  dest_range             = null
  name                   = null
  network                = null
  next_hop_gateway       = null
  next_hop_ilb           = null
  next_hop_instance      = null
  next_hop_instance_zone = null
  next_hop_ip            = null
  next_hop_vpn_tunnel    = null
  priority               = null
  project                = null
  tags                   = []

  timeouts = [{
    create = null
    delete = null
  }]
}
