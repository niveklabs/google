terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_sql_source_representation_instance" "this" {
  database_version = var.database_version
  host             = var.host
  name             = var.name
  port             = var.port
  project          = var.project
  region           = var.region

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

