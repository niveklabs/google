module "google_game_services_realm" {
  source = "./modules/google/r/google_game_services_realm"

  # description - (optional) is a type of string
  description = null
  # labels - (optional) is a type of map of string
  labels = {}
  # location - (optional) is a type of string
  location = null
  # project - (optional) is a type of string
  project = null
  # realm_id - (required) is a type of string
  realm_id = null
  # time_zone - (required) is a type of string
  time_zone = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
