module "google_cloudiot_registry" {
  source = "./modules/google/r/google_cloudiot_registry"

  # event_notification_config - (optional) is a type of map of string
  event_notification_config = {}
  # http_config - (optional) is a type of map of string
  http_config = {}
  # log_level - (optional) is a type of string
  log_level = null
  # mqtt_config - (optional) is a type of map of string
  mqtt_config = {}
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # state_notification_config - (optional) is a type of map of string
  state_notification_config = {}

  credentials = [{
    public_key_certificate = {}
  }]

  event_notification_configs = [{
    pubsub_topic_name = null
    subfolder_matches = null
  }]
}
