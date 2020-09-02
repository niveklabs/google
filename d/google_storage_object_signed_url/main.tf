terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

data "google_storage_object_signed_url" "this" {
  bucket            = var.bucket
  content_md5       = var.content_md5
  content_type      = var.content_type
  credentials       = var.credentials
  duration          = var.duration
  extension_headers = var.extension_headers
  http_method       = var.http_method
  path              = var.path
}

