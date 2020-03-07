module "google_ml_engine_model" {
  source = "./google/r/google_ml_engine_model"

  description                       = null
  labels                            = {}
  name                              = null
  online_prediction_console_logging = null
  online_prediction_logging         = null
  project                           = null
  regions                           = []

  default_version = [{
    name = null
  }]

  timeouts = [{
    create = null
    delete = null
  }]
}
