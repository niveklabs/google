module "google_game_services_game_server_deployment" {
  source = "./modules/google/r/google_game_services_game_server_deployment"

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

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
