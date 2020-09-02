module "google_compute_network_peering" {
  source = "./modules/google/r/google_compute_network_peering"

  # auto_create_routes - (optional) is a type of bool
  auto_create_routes = null
  # export_custom_routes - (optional) is a type of bool
  export_custom_routes = null
  # import_custom_routes - (optional) is a type of bool
  import_custom_routes = null
  # name - (required) is a type of string
  name = null
  # network - (required) is a type of string
  network = null
  # peer_network - (required) is a type of string
  peer_network = null
}
