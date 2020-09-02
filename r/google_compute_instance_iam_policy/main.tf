terraform {
  required_providers {
    google = ">= 3.25.0"
  }
}

resource "google_compute_instance_iam_policy" "this" {
  instance_name = var.instance_name
  policy_data   = var.policy_data
  project       = var.project
  zone          = var.zone
}

