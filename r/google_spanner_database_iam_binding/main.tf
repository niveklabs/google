terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_spanner_database_iam_binding" "this" {
  database = var.database
  instance = var.instance
  members  = var.members
  project  = var.project
  role     = var.role
}

