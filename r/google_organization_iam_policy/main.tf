terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_organization_iam_policy" "this" {
  org_id      = var.org_id
  policy_data = var.policy_data
}

