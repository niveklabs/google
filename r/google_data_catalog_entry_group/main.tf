terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

resource "google_data_catalog_entry_group" "this" {
  description    = var.description
  display_name   = var.display_name
  entry_group_id = var.entry_group_id
  project        = var.project
  region         = var.region

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

