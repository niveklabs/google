module "google_compute_interconnect_attachment" {
  source = "./google/r/google_compute_interconnect_attachment"

  admin_enabled            = null
  bandwidth                = null
  candidate_subnets        = []
  description              = null
  edge_availability_domain = null
  interconnect             = null
  name                     = null
  project                  = null
  region                   = null
  router                   = null
  type                     = null
  vlan_tag8021q            = null

  timeouts = [{
    create = null
    delete = null
  }]
}
