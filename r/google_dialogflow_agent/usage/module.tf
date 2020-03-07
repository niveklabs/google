module "google_dialogflow_agent" {
  source = "./google/r/google_dialogflow_agent"

  api_version              = null
  avatar_uri               = null
  classification_threshold = null
  default_language_code    = null
  description              = null
  display_name             = null
  enable_logging           = null
  match_mode               = null
  project                  = null
  supported_language_codes = []
  tier                     = null
  time_zone                = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
