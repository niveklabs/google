terraform {
  required_providers {
    google = ">= 3.31.0"
  }
}

resource "google_folder" "this" {
  display_name = var.display_name
  parent       = var.parent

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

