terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

resource "google_project_usage_export_bucket" "this" {
  bucket_name = var.bucket_name
  prefix      = var.prefix
  project     = var.project

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

