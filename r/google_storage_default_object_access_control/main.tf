terraform {
  required_providers {
    google = ">= 3.11.0"
  }
}

resource "google_storage_default_object_access_control" "this" {
  bucket = var.bucket
  entity = var.entity
  object = var.object
  role   = var.role

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

