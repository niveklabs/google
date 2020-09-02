terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

data "google_sql_database_instance" "this" {
  name    = var.name
  project = var.project
}

