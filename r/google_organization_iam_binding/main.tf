terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

resource "google_organization_iam_binding" "this" {
  members = var.members
  org_id  = var.org_id
  role    = var.role
}

