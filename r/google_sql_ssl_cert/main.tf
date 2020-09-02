terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_sql_ssl_cert" "this" {
  common_name = var.common_name
  instance    = var.instance
  project     = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

