terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

resource "google_compute_shared_vpc_service_project" "this" {
  host_project    = var.host_project
  service_project = var.service_project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

