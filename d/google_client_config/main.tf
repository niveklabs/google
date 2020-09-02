terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

data "google_client_config" "this" {
}

