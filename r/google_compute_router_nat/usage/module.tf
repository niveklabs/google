module "google_compute_router_nat" {
  source = "./modules/google/r/google_compute_router_nat"

  # drain_nat_ips - (optional) is a type of set of string
  drain_nat_ips = []
  # icmp_idle_timeout_sec - (optional) is a type of number
  icmp_idle_timeout_sec = null
  # min_ports_per_vm - (optional) is a type of number
  min_ports_per_vm = null
  # name - (required) is a type of string
  name = null
  # nat_ip_allocate_option - (required) is a type of string
  nat_ip_allocate_option = null
  # nat_ips - (optional) is a type of set of string
  nat_ips = []
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # router - (required) is a type of string
  router = null
  # source_subnetwork_ip_ranges_to_nat - (required) is a type of string
  source_subnetwork_ip_ranges_to_nat = null
  # tcp_established_idle_timeout_sec - (optional) is a type of number
  tcp_established_idle_timeout_sec = null
  # tcp_transitory_idle_timeout_sec - (optional) is a type of number
  tcp_transitory_idle_timeout_sec = null
  # udp_idle_timeout_sec - (optional) is a type of number
  udp_idle_timeout_sec = null

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
