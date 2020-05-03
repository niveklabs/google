terraform {
  required_providers {
    google = ">= 3.13.0"
  }
}

data "google_sql_ca_certs" "this" {
  instance = var.instance
  project  = var.project
}

