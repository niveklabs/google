terraform {
  required_providers {
    google = ">= 3.11.0"
  }
}

resource "google_compute_disk_resource_policy_attachment" "this" {
  disk    = var.disk
  name    = var.name
  project = var.project
  zone    = var.zone

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

