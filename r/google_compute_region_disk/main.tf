terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

resource "google_compute_region_disk" "this" {
  description               = var.description
  labels                    = var.labels
  name                      = var.name
  physical_block_size_bytes = var.physical_block_size_bytes
  project                   = var.project
  region                    = var.region
  replica_zones             = var.replica_zones
  size                      = var.size
  snapshot                  = var.snapshot
  type                      = var.type

  dynamic "disk_encryption_key" {
    for_each = var.disk_encryption_key
    content {
      raw_key = disk_encryption_key.value["raw_key"]
    }
  }

  dynamic "source_snapshot_encryption_key" {
    for_each = var.source_snapshot_encryption_key
    content {
      raw_key = source_snapshot_encryption_key.value["raw_key"]
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

