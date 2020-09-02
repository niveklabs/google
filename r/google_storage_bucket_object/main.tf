terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_storage_bucket_object" "this" {
  bucket              = var.bucket
  cache_control       = var.cache_control
  content             = var.content
  content_disposition = var.content_disposition
  content_encoding    = var.content_encoding
  content_language    = var.content_language
  content_type        = var.content_type
  detect_md5hash      = var.detect_md5hash
  metadata            = var.metadata
  name                = var.name
  source              = var.source
  storage_class       = var.storage_class
}

