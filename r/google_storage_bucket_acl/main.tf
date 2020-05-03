terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

resource "google_storage_bucket_acl" "this" {
  bucket         = var.bucket
  default_acl    = var.default_acl
  predefined_acl = var.predefined_acl
  role_entity    = var.role_entity
}

