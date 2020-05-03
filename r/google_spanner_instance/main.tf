terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_spanner_instance" "this" {
  config       = var.config
  display_name = var.display_name
  labels       = var.labels
  name         = var.name
  num_nodes    = var.num_nodes
  project      = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

