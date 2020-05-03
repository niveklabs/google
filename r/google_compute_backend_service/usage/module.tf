module "google_compute_backend_service" {
  source = "./modules/google/r/google_compute_backend_service"

  affinity_cookie_ttl_sec         = null
  connection_draining_timeout_sec = null
  description                     = null
  enable_cdn                      = null
  health_checks                   = []
  load_balancing_scheme           = null
  name                            = null
  port_name                       = null
  project                         = null
  protocol                        = null
  security_policy                 = null
  session_affinity                = null
  timeout_sec                     = null

  backend = [{
    balancing_mode               = null
    capacity_scaler              = null
    description                  = null
    group                        = null
    max_connections              = null
    max_connections_per_endpoint = null
    max_connections_per_instance = null
    max_rate                     = null
    max_rate_per_endpoint        = null
    max_rate_per_instance        = null
    max_utilization              = null
  }]

  cdn_policy = [{
    cache_key_policy = [{
      include_host           = null
      include_protocol       = null
      include_query_string   = null
      query_string_blacklist = []
      query_string_whitelist = []
    }]
    signed_url_cache_max_age_sec = null
  }]

  iap = [{
    oauth2_client_id            = null
    oauth2_client_secret        = null
    oauth2_client_secret_sha256 = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
