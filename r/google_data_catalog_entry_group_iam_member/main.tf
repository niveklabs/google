terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

resource "google_data_catalog_entry_group_iam_member" "this" {
  entry_group = var.entry_group
  member      = var.member
  project     = var.project
  region      = var.region
  role        = var.role
}

