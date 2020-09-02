terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_dataflow_job" "this" {
  additional_experiments = var.additional_experiments
  ip_configuration       = var.ip_configuration
  labels                 = var.labels
  machine_type           = var.machine_type
  max_workers            = var.max_workers
  name                   = var.name
  network                = var.network
  on_delete              = var.on_delete
  parameters             = var.parameters
  project                = var.project
  region                 = var.region
  service_account_email  = var.service_account_email
  subnetwork             = var.subnetwork
  temp_gcs_location      = var.temp_gcs_location
  template_gcs_path      = var.template_gcs_path
  zone                   = var.zone
}

