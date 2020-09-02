module "google_compute_network_endpoint" {
  source = "./modules/google/r/google_compute_network_endpoint"

  # instance - (required) is a type of string
  instance = null
  # ip_address - (required) is a type of string
  ip_address = null
  # network_endpoint_group - (required) is a type of string
  network_endpoint_group = null
  # port - (required) is a type of number
  port = null
  # project - (optional) is a type of string
  project = null
  # zone - (optional) is a type of string
  zone = null

  timeouts = [{
    create = null
    delete = null
  }]
}
