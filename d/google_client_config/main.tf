terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

data "google_client_config" "this" {
}

