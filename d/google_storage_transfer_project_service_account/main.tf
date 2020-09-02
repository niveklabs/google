terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

data "google_storage_transfer_project_service_account" "this" {
  project = var.project
}

