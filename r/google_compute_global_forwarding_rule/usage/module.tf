module "google_compute_global_forwarding_rule" {
  source = "./modules/google/r/google_compute_global_forwarding_rule"

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
  # port_range - (optional) is a type of string
  port_range = null
  # project - (optional) is a type of string
  project = null
  # target - (required) is a type of string
  target = null

  metadata_filters = [{
    filter_labels = [{
      name  = null
      value = null
    }]
    filter_match_criteria = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
