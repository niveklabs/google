terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_organization_iam_member" "this" {
  member = var.member
  org_id = var.org_id
  role   = var.role
}

