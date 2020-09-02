terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

data "google_client_config" "this" {
}

