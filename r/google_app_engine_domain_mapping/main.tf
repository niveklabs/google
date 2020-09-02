terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_app_engine_domain_mapping" "this" {
  domain_name       = var.domain_name
  override_strategy = var.override_strategy
  project           = var.project

  dynamic "ssl_settings" {
    for_each = var.ssl_settings
    content {
      certificate_id      = ssl_settings.value["certificate_id"]
      ssl_management_type = ssl_settings.value["ssl_management_type"]
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

