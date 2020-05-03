terraform {
  required_providers {
    google = ">= 3.19.0"
  }
}

resource "google_sql_user" "this" {
  host     = var.host
  instance = var.instance
  name     = var.name
  password = var.password
  project  = var.project
}

