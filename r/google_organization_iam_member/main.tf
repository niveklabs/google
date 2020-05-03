terraform {
  required_providers {
    google = ">= 3.13.0"
  }
}

resource "google_organization_iam_member" "this" {
  member = var.member
  org_id = var.org_id
  role   = var.role
}

