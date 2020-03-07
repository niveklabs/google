module "google_compute_network_peering" {
  source = "./google/r/google_compute_network_peering"

  auto_create_routes   = null
  export_custom_routes = null
  import_custom_routes = null
  name                 = null
  network              = null
  peer_network         = null
}
