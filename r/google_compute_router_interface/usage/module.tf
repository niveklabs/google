module "google_compute_router_interface" {
  source = "./modules/google/r/google_compute_router_interface"

  interconnect_attachment = null
  ip_range                = null
  name                    = null
  project                 = null
  region                  = null
  router                  = null
  vpn_tunnel              = null
}
