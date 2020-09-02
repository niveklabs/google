module "google_dialogflow_entity_type" {
  source = "./modules/google/r/google_dialogflow_entity_type"

  # display_name - (required) is a type of string
  display_name = null
  # enable_fuzzy_extraction - (optional) is a type of bool
  enable_fuzzy_extraction = null
  # kind - (required) is a type of string
  kind = null
  # project - (optional) is a type of string
  project = null

  entities = [{
    synonyms = []
    value    = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
