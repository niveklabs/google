terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

data "google_storage_project_service_account" "this" {
  project      = var.project
  user_project = var.user_project
}

