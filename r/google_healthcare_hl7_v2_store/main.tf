terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

resource "google_healthcare_hl7_v2_store" "this" {
  dataset = var.dataset
  labels  = var.labels
  name    = var.name

  dynamic "notification_config" {
    for_each = var.notification_config
    content {
      pubsub_topic = notification_config.value["pubsub_topic"]
    }
  }

  dynamic "notification_configs" {
    for_each = var.notification_configs
    content {
      filter       = notification_configs.value["filter"]
      pubsub_topic = notification_configs.value["pubsub_topic"]
    }
  }

  dynamic "parser_config" {
    for_each = var.parser_config
    content {
      allow_null_header  = parser_config.value["allow_null_header"]
      schema             = parser_config.value["schema"]
      segment_terminator = parser_config.value["segment_terminator"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

