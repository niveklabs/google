module "google_compute_region_backend_service" {
  source = "./modules/google/r/google_compute_region_backend_service"

  # affinity_cookie_ttl_sec - (optional) is a type of number
  affinity_cookie_ttl_sec = null
  # connection_draining_timeout_sec - (optional) is a type of number
  connection_draining_timeout_sec = null
  # description - (optional) is a type of string
  description = null
  # health_checks - (required) is a type of set of string
  health_checks = []
  # load_balancing_scheme - (optional) is a type of string
  load_balancing_scheme = null
  # locality_lb_policy - (optional) is a type of string
  locality_lb_policy = null
  # name - (required) is a type of string
  name = null
  # network - (optional) is a type of string
  network = null
  # port_name - (optional) is a type of string
  port_name = null
  # project - (optional) is a type of string
  project = null
  # protocol - (optional) is a type of string
  protocol = null
  # region - (optional) is a type of string
  region = null
  # session_affinity - (optional) is a type of string
  session_affinity = null
  # timeout_sec - (optional) is a type of number
  timeout_sec = null

  backend = [{
    balancing_mode               = null
    capacity_scaler              = null
    description                  = null
    failover                     = null
    group                        = null
    max_connections              = null
    max_connections_per_endpoint = null
    max_connections_per_instance = null
    max_rate                     = null
    max_rate_per_endpoint        = null
    max_rate_per_instance        = null
    max_utilization              = null
  }]

  circuit_breakers = [{
    max_connections             = null
    max_pending_requests        = null
    max_requests                = null
    max_requests_per_connection = null
    max_retries                 = null
  }]

  consistent_hash = [{
    http_cookie = [{
      name = null
      path = null
      ttl = [{
        nanos   = null
        seconds = null
      }]
    }]
    http_header_name  = null
    minimum_ring_size = null
  }]

  failover_policy = [{
    disable_connection_drain_on_failover = null
    drop_traffic_if_unhealthy            = null
    failover_ratio                       = null
  }]

  log_config = [{
    enable      = null
    sample_rate = null
  }]

  outlier_detection = [{
    base_ejection_time = [{
      nanos   = null
      seconds = null
    }]
    consecutive_errors                    = null
    consecutive_gateway_failure           = null
    enforcing_consecutive_errors          = null
    enforcing_consecutive_gateway_failure = null
    enforcing_success_rate                = null
    interval = [{
      nanos   = null
      seconds = null
    }]
    max_ejection_percent        = null
    success_rate_minimum_hosts  = null
    success_rate_request_volume = null
    success_rate_stdev_factor   = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
