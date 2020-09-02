terraform {
  required_providers {
    google = ">= 3.20.0"
  }
}

resource "google_compute_instance_iam_member" "this" {
  instance_name = var.instance_name
  member        = var.member
  project       = var.project
  role          = var.role
  zone          = var.zone
}

