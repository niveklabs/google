terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_iap_tunnel_instance_iam_binding" "this" {
  instance = var.instance
  members  = var.members
  project  = var.project
  role     = var.role
  zone     = var.zone
}

