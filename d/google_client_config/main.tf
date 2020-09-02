terraform {
  required_providers {
    google = ">= 3.25.0"
  }
}

data "google_client_config" "this" {
}

