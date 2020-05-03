terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

resource "google_project_iam_custom_role" "this" {
  description = var.description
  permissions = var.permissions
  project     = var.project
  role_id     = var.role_id
  stage       = var.stage
  title       = var.title
}

