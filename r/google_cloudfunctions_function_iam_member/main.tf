terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_cloudfunctions_function_iam_member" "this" {
  cloud_function = var.cloud_function
  member         = var.member
  project        = var.project
  region         = var.region
  role           = var.role
}

