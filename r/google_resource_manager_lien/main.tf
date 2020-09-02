terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_resource_manager_lien" "this" {
  origin       = var.origin
  parent       = var.parent
  reason       = var.reason
  restrictions = var.restrictions

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

