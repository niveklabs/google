terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

resource "google_compute_backend_service" "this" {
  affinity_cookie_ttl_sec         = var.affinity_cookie_ttl_sec
  connection_draining_timeout_sec = var.connection_draining_timeout_sec
  description                     = var.description
  enable_cdn                      = var.enable_cdn
  health_checks                   = var.health_checks
  load_balancing_scheme           = var.load_balancing_scheme
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

  dynamic "iap" {
    for_each = var.iap
    content {
      oauth2_client_id     = iap.value["oauth2_client_id"]
      oauth2_client_secret = iap.value["oauth2_client_secret"]
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

