terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_compute_target_instance" "this" {
  description = var.description
  instance    = var.instance
  name        = var.name
  nat_policy  = var.nat_policy
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

