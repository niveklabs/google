terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_data_catalog_entry_group_iam_binding" "this" {
  entry_group = var.entry_group
  members     = var.members
  project     = var.project
  region      = var.region
  role        = var.role
}

