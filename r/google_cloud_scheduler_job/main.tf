terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_cloud_scheduler_job" "this" {
  attempt_deadline = var.attempt_deadline
  description      = var.description
  name             = var.name
  project          = var.project
  region           = var.region
  schedule         = var.schedule
  time_zone        = var.time_zone

  dynamic "app_engine_http_target" {
    for_each = var.app_engine_http_target
    content {
      body         = app_engine_http_target.value["body"]
      headers      = app_engine_http_target.value["headers"]
      http_method  = app_engine_http_target.value["http_method"]
      relative_uri = app_engine_http_target.value["relative_uri"]

      dynamic "app_engine_routing" {
        for_each = app_engine_http_target.value.app_engine_routing
        content {
          instance = app_engine_routing.value["instance"]
          service  = app_engine_routing.value["service"]
          version  = app_engine_routing.value["version"]
        }
      }

    }
  }

  dynamic "http_target" {
    for_each = var.http_target
    content {
      body        = http_target.value["body"]
      headers     = http_target.value["headers"]
      http_method = http_target.value["http_method"]
      uri         = http_target.value["uri"]

      dynamic "oauth_token" {
        for_each = http_target.value.oauth_token
        content {
          scope                 = oauth_token.value["scope"]
          service_account_email = oauth_token.value["service_account_email"]
        }
      }

      dynamic "oidc_token" {
        for_each = http_target.value.oidc_token
        content {
          audience              = oidc_token.value["audience"]
          service_account_email = oidc_token.value["service_account_email"]
        }
      }

    }
  }

  dynamic "pubsub_target" {
    for_each = var.pubsub_target
    content {
      attributes = pubsub_target.value["attributes"]
      data       = pubsub_target.value["data"]
      topic_name = pubsub_target.value["topic_name"]
    }
  }

  dynamic "retry_config" {
    for_each = var.retry_config
    content {
      max_backoff_duration = retry_config.value["max_backoff_duration"]
      max_doublings        = retry_config.value["max_doublings"]
      max_retry_duration   = retry_config.value["max_retry_duration"]
      min_backoff_duration = retry_config.value["min_backoff_duration"]
      retry_count          = retry_config.value["retry_count"]
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

