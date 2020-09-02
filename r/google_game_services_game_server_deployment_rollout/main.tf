terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_game_services_game_server_deployment_rollout" "this" {
  default_game_server_config = var.default_game_server_config
  deployment_id              = var.deployment_id
  project                    = var.project

  dynamic "game_server_config_overrides" {
    for_each = var.game_server_config_overrides
    content {
      config_version = game_server_config_overrides.value["config_version"]

      dynamic "realms_selector" {
        for_each = game_server_config_overrides.value.realms_selector
        content {
          realms = realms_selector.value["realms"]
        }
      }

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

