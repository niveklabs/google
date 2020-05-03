terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

resource "google_sourcerepo_repository" "this" {
  name    = var.name
  project = var.project

  dynamic "pubsub_configs" {
    for_each = var.pubsub_configs
    content {
      message_format        = pubsub_configs.value["message_format"]
      service_account_email = pubsub_configs.value["service_account_email"]
      topic                 = pubsub_configs.value["topic"]
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

