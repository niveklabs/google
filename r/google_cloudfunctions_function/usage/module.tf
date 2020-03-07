module "google_cloudfunctions_function" {
  source = "./google/r/google_cloudfunctions_function"

  available_memory_mb   = null
  description           = null
  entry_point           = null
  environment_variables = {}
  https_trigger_url     = null
  labels                = {}
  max_instances         = null
  name                  = null
  project               = null
  region                = null
  runtime               = null
  service_account_email = null
  source_archive_bucket = null
  source_archive_object = null
  timeout               = null
  trigger_http          = null
  vpc_connector         = null

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
