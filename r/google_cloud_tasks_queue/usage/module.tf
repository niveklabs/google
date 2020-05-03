module "google_cloud_tasks_queue" {
  source = "./modules/google/r/google_cloud_tasks_queue"

  location = null
  name     = null
  project  = null

  app_engine_routing_override = [{
    host     = null
    instance = null
    service  = null
    version  = null
  }]

  rate_limits = [{
    max_burst_size            = null
    max_concurrent_dispatches = null
    max_dispatches_per_second = null
  }]

  retry_config = [{
    max_attempts       = null
    max_backoff        = null
    max_doublings      = null
    max_retry_duration = null
    min_backoff        = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
