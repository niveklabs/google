terraform {
  required_providers {
    google = ">= 3.15.0"
  }
}

resource "google_compute_attached_disk" "this" {
  device_name = var.device_name
  disk        = var.disk
  instance    = var.instance
  mode        = var.mode
  project     = var.project
  zone        = var.zone

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

