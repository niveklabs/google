terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_compute_backend_service" "this" {
  affinity_cookie_ttl_sec         = var.affinity_cookie_ttl_sec
  connection_draining_timeout_sec = var.connection_draining_timeout_sec
  custom_request_headers          = var.custom_request_headers
  description                     = var.description
  enable_cdn                      = var.enable_cdn
  health_checks                   = var.health_checks
  load_balancing_scheme           = var.load_balancing_scheme
  locality_lb_policy              = var.locality_lb_policy
  name                            = var.name
  port_name                       = var.port_name
  project                         = var.project
  protocol                        = var.protocol
  security_policy                 = var.security_policy
  session_affinity                = var.session_affinity
  timeout_sec                     = var.timeout_sec

  dynamic "backend" {
    for_each = var.backend
    content {
      balancing_mode               = backend.value["balancing_mode"]
      capacity_scaler              = backend.value["capacity_scaler"]
      description                  = backend.value["description"]
      group                        = backend.value["group"]
      max_connections              = backend.value["max_connections"]
      max_connections_per_endpoint = backend.value["max_connections_per_endpoint"]
      max_connections_per_instance = backend.value["max_connections_per_instance"]
      max_rate                     = backend.value["max_rate"]
      max_rate_per_endpoint        = backend.value["max_rate_per_endpoint"]
      max_rate_per_instance        = backend.value["max_rate_per_instance"]
      max_utilization              = backend.value["max_utilization"]
    }
  }

  dynamic "cdn_policy" {
    for_each = var.cdn_policy
    content {
      signed_url_cache_max_age_sec = cdn_policy.value["signed_url_cache_max_age_sec"]

      dynamic "cache_key_policy" {
        for_each = cdn_policy.value.cache_key_policy
        content {
          include_host           = cache_key_policy.value["include_host"]
          include_protocol       = cache_key_policy.value["include_protocol"]
          include_query_string   = cache_key_policy.value["include_query_string"]
          query_string_blacklist = cache_key_policy.value["query_string_blacklist"]
          query_string_whitelist = cache_key_policy.value["query_string_whitelist"]
        }
      }

    }
  }

  dynamic "circuit_breakers" {
    for_each = var.circuit_breakers
    content {
      max_connections             = circuit_breakers.value["max_connections"]
      max_pending_requests        = circuit_breakers.value["max_pending_requests"]
      max_requests                = circuit_breakers.value["max_requests"]
      max_requests_per_connection = circuit_breakers.value["max_requests_per_connection"]
      max_retries                 = circuit_breakers.value["max_retries"]
    }
  }

  dynamic "consistent_hash" {
    for_each = var.consistent_hash
    content {
      http_header_name  = consistent_hash.value["http_header_name"]
      minimum_ring_size = consistent_hash.value["minimum_ring_size"]

      dynamic "http_cookie" {
        for_each = consistent_hash.value.http_cookie
        content {
          name = http_cookie.value["name"]
          path = http_cookie.value["path"]

          dynamic "ttl" {
            for_each = http_cookie.value.ttl
            content {
              nanos   = ttl.value["nanos"]
              seconds = ttl.value["seconds"]
            }
          }

        }
      }

    }
  }

  dynamic "iap" {
    for_each = var.iap
    content {
      oauth2_client_id     = iap.value["oauth2_client_id"]
      oauth2_client_secret = iap.value["oauth2_client_secret"]
    }
  }

  dynamic "log_config" {
    for_each = var.log_config
    content {
      enable      = log_config.value["enable"]
      sample_rate = log_config.value["sample_rate"]
    }
  }

  dynamic "outlier_detection" {
    for_each = var.outlier_detection
    content {
      consecutive_errors                    = outlier_detection.value["consecutive_errors"]
      consecutive_gateway_failure           = outlier_detection.value["consecutive_gateway_failure"]
      enforcing_consecutive_errors          = outlier_detection.value["enforcing_consecutive_errors"]
      enforcing_consecutive_gateway_failure = outlier_detection.value["enforcing_consecutive_gateway_failure"]
      enforcing_success_rate                = outlier_detection.value["enforcing_success_rate"]
      max_ejection_percent                  = outlier_detection.value["max_ejection_percent"]
      success_rate_minimum_hosts            = outlier_detection.value["success_rate_minimum_hosts"]
      success_rate_request_volume           = outlier_detection.value["success_rate_request_volume"]
      success_rate_stdev_factor             = outlier_detection.value["success_rate_stdev_factor"]

      dynamic "base_ejection_time" {
        for_each = outlier_detection.value.base_ejection_time
        content {
          nanos   = base_ejection_time.value["nanos"]
          seconds = base_ejection_time.value["seconds"]
        }
      }

      dynamic "interval" {
        for_each = outlier_detection.value.interval
        content {
          nanos   = interval.value["nanos"]
          seconds = interval.value["seconds"]
        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

