module "google_ml_engine_model" {
  source = "./modules/google/r/google_ml_engine_model"

  # description - (optional) is a type of string
  description = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # online_prediction_console_logging - (optional) is a type of bool
  online_prediction_console_logging = null
  # online_prediction_logging - (optional) is a type of bool
  online_prediction_logging = null
  # project - (optional) is a type of string
  project = null
  # regions - (optional) is a type of list of string
  regions = []

  default_version = [{
    name = null
  }]

  timeouts = [{
    create = null
    delete = null
  }]
}
