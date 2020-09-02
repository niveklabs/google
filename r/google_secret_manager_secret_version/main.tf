terraform {
  required_providers {
    google = ">= 3.31.0"
  }
}

resource "google_secret_manager_secret_version" "this" {
  enabled     = var.enabled
  secret      = var.secret
  secret_data = var.secret_data

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

