module "google_app_engine_flexible_app_version" {
  source = "./modules/google/r/google_app_engine_flexible_app_version"

  beta_settings                = {}
  default_expiration           = null
  delete_service_on_destroy    = null
  env_variables                = {}
  inbound_services             = []
  instance_class               = null
  nobuild_files_regex          = null
  noop_on_destroy              = null
  project                      = null
  runtime                      = null
  runtime_api_version          = null
  runtime_channel              = null
  runtime_main_executable_path = null
  service                      = null
  serving_status               = null
  version_id                   = null

  api_config = [{
    auth_fail_action = null
    login            = null
    script           = null
    security_level   = null
    url              = null
  }]

  automatic_scaling = [{
    cool_down_period = null
    cpu_utilization = [{
      aggregation_window_length = null
      target_utilization        = null
    }]
    disk_utilization = [{
      target_read_bytes_per_second  = null
      target_read_ops_per_second    = null
      target_write_bytes_per_second = null
      target_write_ops_per_second   = null
    }]
    max_concurrent_requests = null
    max_idle_instances      = null
    max_pending_latency     = null
    max_total_instances     = null
    min_idle_instances      = null
    min_pending_latency     = null
    min_total_instances     = null
    network_utilization = [{
      target_received_bytes_per_second   = null
      target_received_packets_per_second = null
      target_sent_bytes_per_second       = null
      target_sent_packets_per_second     = null
    }]
    request_utilization = [{
      target_concurrent_requests      = null
      target_request_count_per_second = null
    }]
  }]

  deployment = [{
    cloud_build_options = [{
      app_yaml_path       = null
      cloud_build_timeout = null
    }]
    container = [{
      image = null
    }]
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

  endpoints_api_service = [{
    config_id              = null
    disable_trace_sampling = null
    name                   = null
    rollout_strategy       = null
  }]

  entrypoint = [{
    shell = null
  }]

  liveness_check = [{
    check_interval    = null
    failure_threshold = null
    host              = null
    initial_delay     = null
    path              = null
    success_threshold = null
    timeout           = null
  }]

  manual_scaling = [{
    instances = null
  }]

  network = [{
    forwarded_ports  = []
    instance_tag     = null
    name             = null
    session_affinity = null
    subnetwork       = null
  }]

  readiness_check = [{
    app_start_timeout = null
    check_interval    = null
    failure_threshold = null
    host              = null
    path              = null
    success_threshold = null
    timeout           = null
  }]

  resources = [{
    cpu       = null
    disk_gb   = null
    memory_gb = null
    volumes = [{
      name        = null
      size_gb     = null
      volume_type = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

  vpc_access_connector = [{
    name = null
  }]
}