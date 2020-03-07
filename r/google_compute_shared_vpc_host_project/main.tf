terraform {
  required_providers {
    google = ">= 3.11.0"
  }
}

resource "google_compute_shared_vpc_host_project" "this" {
  project = var.project
}

