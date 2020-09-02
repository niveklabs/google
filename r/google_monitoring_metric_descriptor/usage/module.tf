module "google_monitoring_metric_descriptor" {
  source = "./modules/google/r/google_monitoring_metric_descriptor"

  # description - (required) is a type of string
  description = null
  # display_name - (required) is a type of string
  display_name = null
  # launch_stage - (optional) is a type of string
  launch_stage = null
  # metric_kind - (required) is a type of string
  metric_kind = null
  # project - (optional) is a type of string
  project = null
  # type - (required) is a type of string
  type = null
  # unit - (optional) is a type of string
  unit = null
  # value_type - (required) is a type of string
  value_type = null

  labels = [{
    description = null
    key         = null
    value_type  = null
  }]

  metadata = [{
    ingest_delay  = null
    sample_period = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
