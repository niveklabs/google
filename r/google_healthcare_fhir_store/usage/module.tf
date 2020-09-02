module "google_healthcare_fhir_store" {
  source = "./modules/google/r/google_healthcare_fhir_store"

  # dataset - (required) is a type of string
  dataset = null
  # disable_referential_integrity - (optional) is a type of bool
  disable_referential_integrity = null
  # disable_resource_versioning - (optional) is a type of bool
  disable_resource_versioning = null
  # enable_history_import - (optional) is a type of bool
  enable_history_import = null
  # enable_update_create - (optional) is a type of bool
  enable_update_create = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # version - (required) is a type of string
  version = null

  notification_config = [{
    pubsub_topic = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
