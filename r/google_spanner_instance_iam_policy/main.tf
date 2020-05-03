terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

resource "google_spanner_instance_iam_policy" "this" {
  instance    = var.instance
  policy_data = var.policy_data
  project     = var.project
}

