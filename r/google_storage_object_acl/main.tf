terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_storage_object_acl" "this" {
  bucket         = var.bucket
  object         = var.object
  predefined_acl = var.predefined_acl
  role_entity    = var.role_entity
}

