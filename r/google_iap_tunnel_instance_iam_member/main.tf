terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

resource "google_iap_tunnel_instance_iam_member" "this" {
  instance = var.instance
  member   = var.member
  project  = var.project
  role     = var.role
  zone     = var.zone
}

