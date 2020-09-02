terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_compute_disk_iam_policy" "this" {
  name        = var.name
  policy_data = var.policy_data
  project     = var.project
  zone        = var.zone
}

