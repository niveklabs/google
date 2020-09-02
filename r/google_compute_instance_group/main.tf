terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_compute_instance_group" "this" {
  description = var.description
  instances   = var.instances
  name        = var.name
  network     = var.network
  project     = var.project
  zone        = var.zone

  dynamic "named_port" {
    for_each = var.named_port
    content {
      name = named_port.value["name"]
      port = named_port.value["port"]
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

