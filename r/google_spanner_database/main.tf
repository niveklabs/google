terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_spanner_database" "this" {
  ddl      = var.ddl
  instance = var.instance
  name     = var.name
  project  = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

