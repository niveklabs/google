terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_data_catalog_entry_group_iam_policy" "this" {
  entry_group = var.entry_group
  policy_data = var.policy_data
  project     = var.project
  region      = var.region
}

