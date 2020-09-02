terraform {
  required_providers {
    google = ">= 3.22.0"
  }
}

resource "google_scc_source" "this" {
  description  = var.description
  display_name = var.display_name
  organization = var.organization

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

