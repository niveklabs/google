terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_secret_manager_secret_iam_member" "this" {
  member    = var.member
  project   = var.project
  role      = var.role
  secret_id = var.secret_id
}

