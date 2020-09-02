terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

resource "google_compute_project_metadata_item" "this" {
  key     = var.key
  project = var.project
  value   = var.value

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

