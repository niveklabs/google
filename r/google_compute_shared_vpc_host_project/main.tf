terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_compute_shared_vpc_host_project" "this" {
  project = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

