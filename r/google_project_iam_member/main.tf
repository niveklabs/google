terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_project_iam_member" "this" {
  member  = var.member
  project = var.project
  role    = var.role
}

