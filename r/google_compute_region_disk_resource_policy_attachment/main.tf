terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

resource "google_compute_region_disk_resource_policy_attachment" "this" {
  disk    = var.disk
  name    = var.name
  project = var.project
  region  = var.region

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

