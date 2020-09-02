terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_compute_subnetwork_iam_member" "this" {
  member     = var.member
  project    = var.project
  region     = var.region
  role       = var.role
  subnetwork = var.subnetwork
}

