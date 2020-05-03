terraform {
  required_providers {
    google = ">= 3.17.0"
  }
}

data "google_compute_instance_serial_port" "this" {
  instance = var.instance
  port     = var.port
  project  = var.project
  zone     = var.zone
}

