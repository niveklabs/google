terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

resource "google_compute_subnetwork_iam_binding" "this" {
  members    = var.members
  project    = var.project
  region     = var.region
  role       = var.role
  subnetwork = var.subnetwork
}

