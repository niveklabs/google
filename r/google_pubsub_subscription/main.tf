terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_pubsub_subscription" "this" {
  ack_deadline_seconds       = var.ack_deadline_seconds
  labels                     = var.labels
  message_retention_duration = var.message_retention_duration
  name                       = var.name
  project                    = var.project
  retain_acked_messages      = var.retain_acked_messages
  topic                      = var.topic

  dynamic "dead_letter_policy" {
    for_each = var.dead_letter_policy
    content {
      dead_letter_topic     = dead_letter_policy.value["dead_letter_topic"]
      max_delivery_attempts = dead_letter_policy.value["max_delivery_attempts"]
    }
  }

  dynamic "expiration_policy" {
    for_each = var.expiration_policy
    content {
      ttl = expiration_policy.value["ttl"]
    }
  }

  dynamic "push_config" {
    for_each = var.push_config
    content {
      attributes    = push_config.value["attributes"]
      push_endpoint = push_config.value["push_endpoint"]

      dynamic "oidc_token" {
        for_each = push_config.value.oidc_token
        content {
          audience              = oidc_token.value["audience"]
          service_account_email = oidc_token.value["service_account_email"]
        }
      }

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

