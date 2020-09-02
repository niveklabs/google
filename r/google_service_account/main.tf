terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

resource "google_service_account" "this" {
  account_id   = var.account_id
  description  = var.description
  display_name = var.display_name
  project      = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
    }
  }

}

