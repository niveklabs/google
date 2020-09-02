module "google_dialogflow_agent" {
  source = "./modules/google/r/google_dialogflow_agent"

  # api_version - (optional) is a type of string
  api_version = null
  # avatar_uri - (optional) is a type of string
  avatar_uri = null
  # classification_threshold - (optional) is a type of number
  classification_threshold = null
  # default_language_code - (required) is a type of string
  default_language_code = null
  # description - (optional) is a type of string
  description = null
  # display_name - (required) is a type of string
  display_name = null
  # enable_logging - (optional) is a type of bool
  enable_logging = null
  # match_mode - (optional) is a type of string
  match_mode = null
  # project - (optional) is a type of string
  project = null
  # supported_language_codes - (optional) is a type of list of string
  supported_language_codes = []
  # tier - (optional) is a type of string
  tier = null
  # time_zone - (required) is a type of string
  time_zone = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
