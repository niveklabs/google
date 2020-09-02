terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_healthcare_dataset" "this" {
  location  = var.location
  name      = var.name
  project   = var.project
  time_zone = var.time_zone

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

