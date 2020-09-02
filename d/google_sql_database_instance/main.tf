terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

data "google_sql_database_instance" "this" {
  name = var.name
}

