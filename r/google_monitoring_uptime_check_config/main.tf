terraform {
  required_providers {
    google = ">= 3.15.0"
  }
}

resource "google_monitoring_uptime_check_config" "this" {
  display_name     = var.display_name
  is_internal      = var.is_internal
  period           = var.period
  project          = var.project
  selected_regions = var.selected_regions
  timeout          = var.timeout

  dynamic "content_matchers" {
    for_each = var.content_matchers
    content {
      content = content_matchers.value["content"]
    }
  }

  dynamic "http_check" {
    for_each = var.http_check
    content {
      headers      = http_check.value["headers"]
      mask_headers = http_check.value["mask_headers"]
      path         = http_check.value["path"]
      port         = http_check.value["port"]
      use_ssl      = http_check.value["use_ssl"]
      validate_ssl = http_check.value["validate_ssl"]

      dynamic "auth_info" {
        for_each = http_check.value.auth_info
        content {
          password = auth_info.value["password"]
          username = auth_info.value["username"]
        }
      }

    }
  }

  dynamic "internal_checkers" {
    for_each = var.internal_checkers
    content {
      display_name    = internal_checkers.value["display_name"]
      gcp_zone        = internal_checkers.value["gcp_zone"]
      name            = internal_checkers.value["name"]
      network         = internal_checkers.value["network"]
      peer_project_id = internal_checkers.value["peer_project_id"]
    }
  }

  dynamic "monitored_resource" {
    for_each = var.monitored_resource
    content {
      labels = monitored_resource.value["labels"]
      type   = monitored_resource.value["type"]
    }
  }

  dynamic "resource_group" {
    for_each = var.resource_group
    content {
      group_id      = resource_group.value["group_id"]
      resource_type = resource_group.value["resource_type"]
    }
  }

  dynamic "tcp_check" {
    for_each = var.tcp_check
    content {
      port = tcp_check.value["port"]
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

