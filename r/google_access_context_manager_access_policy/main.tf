terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

resource "google_access_context_manager_access_policy" "this" {
  parent = var.parent
  title  = var.title

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

