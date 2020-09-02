terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

data "google_tpu_tensorflow_versions" "this" {
  project = var.project
  zone    = var.zone
}

