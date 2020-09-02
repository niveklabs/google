terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

resource "google_cloud_run_service_iam_member" "this" {
  location = var.location
  member   = var.member
  project  = var.project
  role     = var.role
  service  = var.service
}

