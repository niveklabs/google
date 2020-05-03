terraform {
  required_providers {
    google = ">= 3.13.0"
  }
}

resource "google_spanner_database_iam_policy" "this" {
  database    = var.database
  instance    = var.instance
  policy_data = var.policy_data
  project     = var.project
}

