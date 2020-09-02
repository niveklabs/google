module "google_game_services_game_server_config" {
  source = "./modules/google/r/google_game_services_game_server_config"

  # config_id - (required) is a type of string
  config_id = null
  # deployment_id - (required) is a type of string
  deployment_id = null
  # description - (optional) is a type of string
  description = null
  # labels - (optional) is a type of map of string
  labels = {}
  # location - (optional) is a type of string
  location = null
  # project - (optional) is a type of string
  project = null

  fleet_configs = [{
    fleet_spec = null
    name       = null
  }]

  scaling_configs = [{
    fleet_autoscaler_spec = null
    name                  = null
    schedules = [{
      cron_job_duration = null
      cron_spec         = null
      end_time          = null
      start_time        = null
    }]
    selectors = [{
      labels = {}
    }]
  }]

  timeouts = [{
    create = null
    delete = null
  }]
}
