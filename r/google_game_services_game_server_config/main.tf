terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_game_services_game_server_config" "this" {
  config_id     = var.config_id
  deployment_id = var.deployment_id
  description   = var.description
  labels        = var.labels
  location      = var.location
  project       = var.project

  dynamic "fleet_configs" {
    for_each = var.fleet_configs
    content {
      fleet_spec = fleet_configs.value["fleet_spec"]
      name       = fleet_configs.value["name"]
    }
  }

  dynamic "scaling_configs" {
    for_each = var.scaling_configs
    content {
      fleet_autoscaler_spec = scaling_configs.value["fleet_autoscaler_spec"]
      name                  = scaling_configs.value["name"]

      dynamic "schedules" {
        for_each = scaling_configs.value.schedules
        content {
          cron_job_duration = schedules.value["cron_job_duration"]
          cron_spec         = schedules.value["cron_spec"]
          end_time          = schedules.value["end_time"]
          start_time        = schedules.value["start_time"]
        }
      }

      dynamic "selectors" {
        for_each = scaling_configs.value.selectors
        content {
          labels = selectors.value["labels"]
        }
      }

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

