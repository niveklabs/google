terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_compute_project_metadata" "this" {
  metadata = var.metadata
  project  = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

