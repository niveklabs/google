terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_compute_shared_vpc_service_project" "this" {
  host_project    = var.host_project
  service_project = var.service_project
}

