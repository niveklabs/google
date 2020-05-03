terraform {
  required_providers {
    google = ">= 3.19.0"
  }
}

resource "google_compute_node_group" "this" {
  description   = var.description
  name          = var.name
  node_template = var.node_template
  project       = var.project
  size          = var.size
  zone          = var.zone

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

