terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_compute_disk" "this" {
  description               = var.description
  image                     = var.image
  labels                    = var.labels
  name                      = var.name
  physical_block_size_bytes = var.physical_block_size_bytes
  project                   = var.project
  size                      = var.size
  snapshot                  = var.snapshot
  type                      = var.type
  zone                      = var.zone

  dynamic "disk_encryption_key" {
    for_each = var.disk_encryption_key
    content {
      kms_key_self_link = disk_encryption_key.value["kms_key_self_link"]
      raw_key           = disk_encryption_key.value["raw_key"]
    }
  }

  dynamic "source_image_encryption_key" {
    for_each = var.source_image_encryption_key
    content {
      kms_key_self_link = source_image_encryption_key.value["kms_key_self_link"]
      raw_key           = source_image_encryption_key.value["raw_key"]
    }
  }

  dynamic "source_snapshot_encryption_key" {
    for_each = var.source_snapshot_encryption_key
    content {
      kms_key_self_link = source_snapshot_encryption_key.value["kms_key_self_link"]
      raw_key           = source_snapshot_encryption_key.value["raw_key"]
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

