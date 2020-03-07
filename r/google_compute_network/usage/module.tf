module "google_compute_network" {
  source = "./google/r/google_compute_network"

  auto_create_subnetworks         = null
  delete_default_routes_on_create = null
  description                     = null
  name                            = null
  project                         = null
  routing_mode                    = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
