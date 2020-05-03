terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_organization_iam_custom_role" "this" {
  description = var.description
  org_id      = var.org_id
  permissions = var.permissions
  role_id     = var.role_id
  stage       = var.stage
  title       = var.title
}

