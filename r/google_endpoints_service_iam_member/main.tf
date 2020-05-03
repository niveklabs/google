terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_endpoints_service_iam_member" "this" {
  member       = var.member
  role         = var.role
  service_name = var.service_name
}

