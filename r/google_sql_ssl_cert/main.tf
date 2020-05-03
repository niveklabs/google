terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_sql_ssl_cert" "this" {
  common_name = var.common_name
  instance    = var.instance
  project     = var.project
}

