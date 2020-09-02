terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_storage_hmac_key" "this" {
  project               = var.project
  service_account_email = var.service_account_email
  state                 = var.state

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

