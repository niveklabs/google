module "google_app_engine_standard_app_version" {
  source = "./modules/google/r/google_app_engine_standard_app_version"

  # delete_service_on_destroy - (optional) is a type of bool
  delete_service_on_destroy = null
  # env_variables - (optional) is a type of map of string
  env_variables = {}
  # inbound_services - (optional) is a type of set of string
  inbound_services = []
  # instance_class - (optional) is a type of string
  instance_class = null
  # noop_on_destroy - (optional) is a type of bool
  noop_on_destroy = null
  # project - (optional) is a type of string
  project = null
  # runtime - (required) is a type of string
  runtime = null
  # runtime_api_version - (optional) is a type of string
  runtime_api_version = null
  # service - (optional) is a type of string
  service = null
  # threadsafe - (optional) is a type of bool
  threadsafe = null
  # version_id - (optional) is a type of string
  version_id = null

  automatic_scaling = [{
    max_concurrent_requests = null
    max_idle_instances      = null
    max_pending_latency     = null
    min_idle_instances      = null
    min_pending_latency     = null
    standard_scheduler_settings = [{
      max_instances                 = null
      min_instances                 = null
      target_cpu_utilization        = null
      target_throughput_utilization = null
    }]
  }]

  basic_scaling = [{
    idle_timeout  = null
    max_instances = null
  }]

  deployment = [{
    files = [{
      name       = null
      sha1_sum   = null
      source_url = null
    }]
    zip = [{
      files_count = null
      source_url  = null
    }]
  }]

  entrypoint = [{
    shell = null
  }]

  handlers = [{
    auth_fail_action            = null
    login                       = null
    redirect_http_response_code = null
    script = [{
      script_path = null
    }]
    security_level = null
    static_files = [{
      application_readable  = null
      expiration            = null
      http_headers          = {}
      mime_type             = null
      path                  = null
      require_matching_file = null
      upload_path_regex     = null
    }]
    url_regex = null
  }]

  libraries = [{
    name    = null
    version = null
  }]

  manual_scaling = [{
    instances = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
