module "google_datastore_index" {
  source = "./modules/google/r/google_datastore_index"

  ancestor = null
  kind     = null
  project  = null

  properties = [{
    direction = null
    name      = null
  }]

  timeouts = [{
    create = null
    delete = null
  }]
}
