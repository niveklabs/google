module "google_compute_network_peering_routes_config" {
  source = "./modules/google/r/google_compute_network_peering_routes_config"

  export_custom_routes = null
  import_custom_routes = null
  network              = null
  peering              = null
  project              = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
