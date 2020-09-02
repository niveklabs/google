module "google_pubsub_topic" {
  source = "./modules/google/r/google_pubsub_topic"

  # kms_key_name - (optional) is a type of string
  kms_key_name = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null

  message_storage_policy = [{
    allowed_persistence_regions = []
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
