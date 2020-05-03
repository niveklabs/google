terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

data "google_client_config" "this" {
}

