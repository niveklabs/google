terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

data "google_bigquery_default_service_account" "this" {
  project = var.project
}

