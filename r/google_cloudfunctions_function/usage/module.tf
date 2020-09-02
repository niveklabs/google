module "google_cloudfunctions_function" {
  source = "./modules/google/r/google_cloudfunctions_function"

  # available_memory_mb - (optional) is a type of number
  available_memory_mb = null
  # description - (optional) is a type of string
  description = null
  # entry_point - (optional) is a type of string
  entry_point = null
  # environment_variables - (optional) is a type of map of string
  environment_variables = {}
  # https_trigger_url - (optional) is a type of string
  https_trigger_url = null
  # ingress_settings - (optional) is a type of string
  ingress_settings = null
  # labels - (optional) is a type of map of string
  labels = {}
  # max_instances - (optional) is a type of number
  max_instances = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # runtime - (required) is a type of string
  runtime = null
  # service_account_email - (optional) is a type of string
  service_account_email = null
  # source_archive_bucket - (optional) is a type of string
  source_archive_bucket = null
  # source_archive_object - (optional) is a type of string
  source_archive_object = null
  # timeout - (optional) is a type of number
  timeout = null
  # trigger_http - (optional) is a type of bool
  trigger_http = null
  # vpc_connector - (optional) is a type of string
  vpc_connector = null
  # vpc_connector_egress_settings - (optional) is a type of string
  vpc_connector_egress_settings = null

  event_trigger = [{
    event_type = null
    failure_policy = [{
      retry = null
    }]
    resource = null
  }]

  source_repository = [{
    deployed_url = null
    url          = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
