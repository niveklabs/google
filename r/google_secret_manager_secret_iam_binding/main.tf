terraform {
  required_providers {
    google = ">= 3.25.0"
  }
}

resource "google_secret_manager_secret_iam_binding" "this" {
  members   = var.members
  project   = var.project
  role      = var.role
  secret_id = var.secret_id
}

