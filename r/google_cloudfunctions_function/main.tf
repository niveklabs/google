terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_cloudfunctions_function" "this" {
  available_memory_mb           = var.available_memory_mb
  description                   = var.description
  entry_point                   = var.entry_point
  environment_variables         = var.environment_variables
  https_trigger_url             = var.https_trigger_url
  ingress_settings              = var.ingress_settings
  labels                        = var.labels
  max_instances                 = var.max_instances
  name                          = var.name
  project                       = var.project
  region                        = var.region
  runtime                       = var.runtime
  service_account_email         = var.service_account_email
  source_archive_bucket         = var.source_archive_bucket
  source_archive_object         = var.source_archive_object
  timeout                       = var.timeout
  trigger_http                  = var.trigger_http
  vpc_connector                 = var.vpc_connector
  vpc_connector_egress_settings = var.vpc_connector_egress_settings

  dynamic "event_trigger" {
    for_each = var.event_trigger
    content {
      event_type = event_trigger.value["event_type"]
      resource   = event_trigger.value["resource"]

      dynamic "failure_policy" {
        for_each = event_trigger.value.failure_policy
        content {
          retry = failure_policy.value["retry"]
        }
      }

    }
  }

  dynamic "source_repository" {
    for_each = var.source_repository
    content {
      url = source_repository.value["url"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

