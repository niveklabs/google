module "google_pubsub_topic" {
  source = "./modules/google/r/google_pubsub_topic"

  kms_key_name = null
  labels       = {}
  name         = null
  project      = null

  message_storage_policy = [{
    allowed_persistence_regions = []
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
