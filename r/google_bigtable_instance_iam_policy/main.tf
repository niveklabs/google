terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_bigtable_instance_iam_policy" "this" {
  instance    = var.instance
  policy_data = var.policy_data
  project     = var.project
}

