terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

data "google_bigquery_default_service_account" "this" {
  project = var.project
}

