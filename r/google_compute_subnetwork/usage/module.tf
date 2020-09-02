module "google_compute_subnetwork" {
  source = "./modules/google/r/google_compute_subnetwork"

  # description - (optional) is a type of string
  description = null
  # enable_flow_logs - (optional) is a type of bool
  enable_flow_logs = null
  # ip_cidr_range - (required) is a type of string
  ip_cidr_range = null
  # name - (required) is a type of string
  name = null
  # network - (required) is a type of string
  network = null
  # private_ip_google_access - (optional) is a type of bool
  private_ip_google_access = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # secondary_ip_range - (optional) is a type of list of object
  secondary_ip_range = [{
    ip_cidr_range = null
    range_name    = null
  }]

  log_config = [{
    aggregation_interval = null
    flow_sampling        = null
    metadata             = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
