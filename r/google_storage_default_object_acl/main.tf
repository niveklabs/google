terraform {
  required_providers {
    google = ">= 3.31.0"
  }
}

resource "google_storage_default_object_acl" "this" {
  bucket      = var.bucket
  role_entity = var.role_entity
}

