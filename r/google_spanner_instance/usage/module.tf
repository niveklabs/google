module "google_spanner_instance" {
  source = "./modules/google/r/google_spanner_instance"

  config       = null
  display_name = null
  labels       = {}
  name         = null
  num_nodes    = null
  project      = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
