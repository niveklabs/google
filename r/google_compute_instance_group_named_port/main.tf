terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_compute_instance_group_named_port" "this" {
  group   = var.group
  name    = var.name
  port    = var.port
  project = var.project
  zone    = var.zone

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

