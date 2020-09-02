terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

data "google_monitoring_app_engine_service" "this" {
  module_id = var.module_id
  project   = var.project
}

