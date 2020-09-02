module "google_compute_network_peering_routes_config" {
  source = "./modules/google/r/google_compute_network_peering_routes_config"

  # export_custom_routes - (required) is a type of bool
  export_custom_routes = null
  # import_custom_routes - (required) is a type of bool
  import_custom_routes = null
  # network - (required) is a type of string
  network = null
  # peering - (required) is a type of string
  peering = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
