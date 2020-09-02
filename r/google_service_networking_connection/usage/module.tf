module "google_service_networking_connection" {
  source = "./modules/google/r/google_service_networking_connection"

  # network - (required) is a type of string
  network = null
  # reserved_peering_ranges - (required) is a type of list of string
  reserved_peering_ranges = []
  # service - (required) is a type of string
  service = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
