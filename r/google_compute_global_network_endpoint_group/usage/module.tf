module "google_compute_global_network_endpoint_group" {
  source = "./modules/google/r/google_compute_global_network_endpoint_group"

  # default_port - (optional) is a type of number
  default_port = null
  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # network_endpoint_type - (required) is a type of string
  network_endpoint_type = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
  }]
}
