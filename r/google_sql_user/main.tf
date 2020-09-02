terraform {
  required_providers {
    google = ">= 3.31.0"
  }
}

resource "google_sql_user" "this" {
  host     = var.host
  instance = var.instance
  name     = var.name
  password = var.password
  project  = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

