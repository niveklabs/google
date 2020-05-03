terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

resource "google_filestore_instance" "this" {
  description = var.description
  labels      = var.labels
  name        = var.name
  project     = var.project
  tier        = var.tier
  zone        = var.zone

  dynamic "file_shares" {
    for_each = var.file_shares
    content {
      capacity_gb = file_shares.value["capacity_gb"]
      name        = file_shares.value["name"]
    }
  }

  dynamic "networks" {
    for_each = var.networks
    content {
      modes             = networks.value["modes"]
      network           = networks.value["network"]
      reserved_ip_range = networks.value["reserved_ip_range"]
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

