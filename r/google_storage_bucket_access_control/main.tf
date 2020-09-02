terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_storage_bucket_access_control" "this" {
  bucket = var.bucket
  entity = var.entity
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

