terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_ml_engine_model" "this" {
  description                       = var.description
  labels                            = var.labels
  name                              = var.name
  online_prediction_console_logging = var.online_prediction_console_logging
  online_prediction_logging         = var.online_prediction_logging
  project                           = var.project
  regions                           = var.regions

  dynamic "default_version" {
    for_each = var.default_version
    content {
      name = default_version.value["name"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

