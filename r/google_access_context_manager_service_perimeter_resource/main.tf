terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_access_context_manager_service_perimeter_resource" "this" {
  perimeter_name = var.perimeter_name
  resource       = var.resource

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

