module "google_healthcare_hl7_v2_store" {
  source = "./modules/google/r/google_healthcare_hl7_v2_store"

  # dataset - (required) is a type of string
  dataset = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null

  notification_config = [{
    pubsub_topic = null
  }]

  notification_configs = [{
    filter       = null
    pubsub_topic = null
  }]

  parser_config = [{
    allow_null_header  = null
    schema             = null
    segment_terminator = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
