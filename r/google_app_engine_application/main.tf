terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_app_engine_application" "this" {
  auth_domain    = var.auth_domain
  location_id    = var.location_id
  project        = var.project
  serving_status = var.serving_status

  dynamic "feature_settings" {
    for_each = var.feature_settings
    content {
      split_health_checks = feature_settings.value["split_health_checks"]
    }
  }

  dynamic "iap" {
    for_each = var.iap
    content {
      oauth2_client_id     = iap.value["oauth2_client_id"]
      oauth2_client_secret = iap.value["oauth2_client_secret"]
    }
  }

}

