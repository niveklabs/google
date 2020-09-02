terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_iap_tunnel_instance_iam_policy" "this" {
  instance    = var.instance
  policy_data = var.policy_data
  project     = var.project
  zone        = var.zone
}

