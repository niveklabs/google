terraform {
  required_providers {
    google = ">= 3.25.0"
  }
}

resource "google_project_iam_binding" "this" {
  members = var.members
  project = var.project
  role    = var.role
}

