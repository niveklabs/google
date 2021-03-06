module "google_cloud_scheduler_job" {
  source = "./modules/google/r/google_cloud_scheduler_job"

  # attempt_deadline - (optional) is a type of string
  attempt_deadline = null
  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # schedule - (optional) is a type of string
  schedule = null
  # time_zone - (optional) is a type of string
  time_zone = null

  app_engine_http_target = [{
    app_engine_routing = [{
      instance = null
      service  = null
      version  = null
    }]
    body         = null
    headers      = {}
    http_method  = null
    relative_uri = null
  }]

  http_target = [{
    body        = null
    headers     = {}
    http_method = null
    oauth_token = [{
      scope                 = null
      service_account_email = null
    }]
    oidc_token = [{
      audience              = null
      service_account_email = null
    }]
    uri = null
  }]

  pubsub_target = [{
    attributes = {}
    data       = null
    topic_name = null
  }]

  retry_config = [{
    max_backoff_duration = null
    max_doublings        = null
    max_retry_duration   = null
    min_backoff_duration = null
    retry_count          = null
  }]

  timeouts = [{
    create = null
    delete = null
  }]
}
