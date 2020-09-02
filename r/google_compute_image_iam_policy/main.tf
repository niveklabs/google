terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_compute_image_iam_policy" "this" {
  image       = var.image
  policy_data = var.policy_data
  project     = var.project
}

