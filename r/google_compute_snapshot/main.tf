terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_compute_snapshot" "this" {
  description = var.description
  labels      = var.labels
  name        = var.name
  project     = var.project
  source_disk = var.source_disk
  zone        = var.zone

  dynamic "snapshot_encryption_key" {
    for_each = var.snapshot_encryption_key
    content {
      raw_key = snapshot_encryption_key.value["raw_key"]
    }
  }

  dynamic "source_disk_encryption_key" {
    for_each = var.source_disk_encryption_key
    content {
      raw_key = source_disk_encryption_key.value["raw_key"]
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

