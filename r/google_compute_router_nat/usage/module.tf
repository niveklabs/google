module "google_compute_router_nat" {
  source = "./google/r/google_compute_router_nat"

  icmp_idle_timeout_sec              = null
  min_ports_per_vm                   = null
  name                               = null
  nat_ip_allocate_option             = null
  nat_ips                            = []
  project                            = null
  region                             = null
  router                             = null
  source_subnetwork_ip_ranges_to_nat = null
  tcp_established_idle_timeout_sec   = null
  tcp_transitory_idle_timeout_sec    = null
  udp_idle_timeout_sec               = null

  log_config = [{
    enable = null
    filter = null
  }]

  subnetwork = [{
    name                     = null
    secondary_ip_range_names = []
    source_ip_ranges_to_nat  = []
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
