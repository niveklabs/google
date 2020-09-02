terraform {
  required_providers {
    google = ">= 3.31.0"
  }
}

data "google_client_config" "this" {
}

