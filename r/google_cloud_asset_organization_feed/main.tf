terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

resource "google_cloud_asset_organization_feed" "this" {
  asset_names     = var.asset_names
  asset_types     = var.asset_types
  billing_project = var.billing_project
  content_type    = var.content_type
  feed_id         = var.feed_id
  org_id          = var.org_id

  dynamic "feed_output_config" {
    for_each = var.feed_output_config
    content {

      dynamic "pubsub_destination" {
        for_each = feed_output_config.value.pubsub_destination
        content {
          topic = pubsub_destination.value["topic"]
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

