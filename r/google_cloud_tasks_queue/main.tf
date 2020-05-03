terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

resource "google_cloud_tasks_queue" "this" {
  location = var.location
  name     = var.name
  project  = var.project

  dynamic "app_engine_routing_override" {
    for_each = var.app_engine_routing_override
    content {
      instance = app_engine_routing_override.value["instance"]
      service  = app_engine_routing_override.value["service"]
      version  = app_engine_routing_override.value["version"]
    }
  }

  dynamic "rate_limits" {
    for_each = var.rate_limits
    content {
      max_concurrent_dispatches = rate_limits.value["max_concurrent_dispatches"]
      max_dispatches_per_second = rate_limits.value["max_dispatches_per_second"]
    }
  }

  dynamic "retry_config" {
    for_each = var.retry_config
    content {
      max_attempts       = retry_config.value["max_attempts"]
      max_backoff        = retry_config.value["max_backoff"]
      max_doublings      = retry_config.value["max_doublings"]
      max_retry_duration = retry_config.value["max_retry_duration"]
      min_backoff        = retry_config.value["min_backoff"]
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

