terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

data "google_client_config" "this" {
}

