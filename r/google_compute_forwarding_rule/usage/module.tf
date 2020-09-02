module "google_compute_forwarding_rule" {
  source = "./modules/google/r/google_compute_forwarding_rule"

  # all_ports - (optional) is a type of bool
  all_ports = null
  # allow_global_access - (optional) is a type of bool
  allow_global_access = null
  # backend_service - (optional) is a type of string
  backend_service = null
  # description - (optional) is a type of string
  description = null
  # ip_address - (optional) is a type of string
  ip_address = null
  # ip_protocol - (optional) is a type of string
  ip_protocol = null
  # ip_version - (optional) is a type of string
  ip_version = null
  # load_balancing_scheme - (optional) is a type of string
  load_balancing_scheme = null
  # name - (required) is a type of string
  name = null
  # network - (optional) is a type of string
  network = null
  # network_tier - (optional) is a type of string
  network_tier = null
  # port_range - (optional) is a type of string
  port_range = null
  # ports - (optional) is a type of set of string
  ports = []
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # service_label - (optional) is a type of string
  service_label = null
  # subnetwork - (optional) is a type of string
  subnetwork = null
  # target - (optional) is a type of string
  target = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
