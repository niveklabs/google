terraform {
  required_providers {
    google = ">= 3.11.0"
  }
}

resource "google_cloudfunctions_function_iam_binding" "this" {
  cloud_function = var.cloud_function
  members        = var.members
  project        = var.project
  region         = var.region
  role           = var.role
}

