terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

resource "google_monitoring_group" "this" {
  display_name = var.display_name
  filter       = var.filter
  is_cluster   = var.is_cluster
  parent_name  = var.parent_name
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

