terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

data "google_monitoring_app_engine_service" "this" {
  module_id = var.module_id
  project   = var.project
}

