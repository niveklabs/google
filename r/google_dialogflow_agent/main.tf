terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_dialogflow_agent" "this" {
  api_version              = var.api_version
  avatar_uri               = var.avatar_uri
  classification_threshold = var.classification_threshold
  default_language_code    = var.default_language_code
  description              = var.description
  display_name             = var.display_name
  enable_logging           = var.enable_logging
  match_mode               = var.match_mode
  project                  = var.project
  supported_language_codes = var.supported_language_codes
  tier                     = var.tier
  time_zone                = var.time_zone

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

