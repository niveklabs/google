module "google_datastore_index" {
  source = "./modules/google/r/google_datastore_index"

  # ancestor - (optional) is a type of string
  ancestor = null
  # kind - (required) is a type of string
  kind = null
  # project - (optional) is a type of string
  project = null

  properties = [{
    direction = null
    name      = null
  }]

  timeouts = [{
    create = null
    delete = null
  }]
}
