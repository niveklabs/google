module "google_compute_global_network_endpoint" {
  source = "./modules/google/r/google_compute_global_network_endpoint"

  # fqdn - (optional) is a type of string
  fqdn = null
  # global_network_endpoint_group - (required) is a type of string
  global_network_endpoint_group = null
  # ip_address - (optional) is a type of string
  ip_address = null
  # port - (required) is a type of number
  port = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
  }]
}
