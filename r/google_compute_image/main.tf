terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_compute_image" "this" {
  description  = var.description
  disk_size_gb = var.disk_size_gb
  family       = var.family
  labels       = var.labels
  licenses     = var.licenses
  name         = var.name
  project      = var.project
  source_disk  = var.source_disk

  dynamic "guest_os_features" {
    for_each = var.guest_os_features
    content {
      type = guest_os_features.value["type"]
    }
  }

  dynamic "raw_disk" {
    for_each = var.raw_disk
    content {
      container_type = raw_disk.value["container_type"]
      sha1           = raw_disk.value["sha1"]
      source         = raw_disk.value["source"]
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

