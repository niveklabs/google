terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_endpoints_service_iam_binding" "this" {
  members      = var.members
  role         = var.role
  service_name = var.service_name
}

