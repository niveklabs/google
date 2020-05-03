terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

resource "google_compute_backend_bucket" "this" {
  bucket_name = var.bucket_name
  description = var.description
  enable_cdn  = var.enable_cdn
  name        = var.name
  project     = var.project

  dynamic "cdn_policy" {
    for_each = var.cdn_policy
    content {
      signed_url_cache_max_age_sec = cdn_policy.value["signed_url_cache_max_age_sec"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

