terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

data "google_game_services_game_server_deployment_rollout" "this" {
  deployment_id = var.deployment_id
}

