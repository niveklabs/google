terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_cloudiot_registry" "this" {
  event_notification_config = var.event_notification_config
  http_config               = var.http_config
  log_level                 = var.log_level
  mqtt_config               = var.mqtt_config
  name                      = var.name
  project                   = var.project
  region                    = var.region
  state_notification_config = var.state_notification_config

  dynamic "credentials" {
    for_each = var.credentials
    content {
      public_key_certificate = credentials.value["public_key_certificate"]
    }
  }

  dynamic "event_notification_configs" {
    for_each = var.event_notification_configs
    content {
      pubsub_topic_name = event_notification_configs.value["pubsub_topic_name"]
      subfolder_matches = event_notification_configs.value["subfolder_matches"]
    }
  }

}

