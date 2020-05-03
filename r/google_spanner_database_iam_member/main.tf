terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_spanner_database_iam_member" "this" {
  database = var.database
  instance = var.instance
  member   = var.member
  project  = var.project
  role     = var.role
}

