terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

resource "google_compute_subnetwork_iam_policy" "this" {
  policy_data = var.policy_data
  project     = var.project
  region      = var.region
  subnetwork  = var.subnetwork
}

