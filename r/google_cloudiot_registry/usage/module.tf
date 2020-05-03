module "google_cloudiot_registry" {
  source = "./modules/google/r/google_cloudiot_registry"

  event_notification_config = {}
  http_config               = {}
  log_level                 = null
  mqtt_config               = {}
  name                      = null
  project                   = null
  region                    = null
  state_notification_config = {}

  credentials = [{
    public_key_certificate = {}
  }]

  event_notification_configs = [{
    pubsub_topic_name = null
    subfolder_matches = null
  }]
}
