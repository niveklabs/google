terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_sql_database" "this" {
  charset   = var.charset
  collation = var.collation
  instance  = var.instance
  name      = var.name
  project   = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

