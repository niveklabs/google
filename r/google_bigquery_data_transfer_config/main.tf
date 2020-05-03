terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

resource "google_bigquery_data_transfer_config" "this" {
  data_refresh_window_days = var.data_refresh_window_days
  data_source_id           = var.data_source_id
  destination_dataset_id   = var.destination_dataset_id
  disabled                 = var.disabled
  display_name             = var.display_name
  location                 = var.location
  params                   = var.params
  project                  = var.project
  schedule                 = var.schedule

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

