terraform {
  required_providers {
    google = ">= 3.16.0"
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

}

