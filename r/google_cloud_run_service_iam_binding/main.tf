terraform {
  required_providers {
    google = ">= 3.17.0"
  }
}

resource "google_cloud_run_service_iam_binding" "this" {
  location = var.location
  members  = var.members
  project  = var.project
  role     = var.role
  service  = var.service
}

