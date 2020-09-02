module "google_compute_network" {
  source = "./modules/google/r/google_compute_network"

  # auto_create_subnetworks - (optional) is a type of bool
  auto_create_subnetworks = null
  # delete_default_routes_on_create - (optional) is a type of bool
  delete_default_routes_on_create = null
  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # routing_mode - (optional) is a type of string
  routing_mode = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
