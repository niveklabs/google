module "google_game_services_game_server_deployment_rollout" {
  source = "./modules/google/r/google_game_services_game_server_deployment_rollout"

  # default_game_server_config - (required) is a type of string
  default_game_server_config = null
  # deployment_id - (required) is a type of string
  deployment_id = null
  # project - (optional) is a type of string
  project = null

  game_server_config_overrides = [{
    config_version = null
    realms_selector = [{
      realms = []
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
