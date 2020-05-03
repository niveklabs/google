module "google_compute_region_backend_service" {
  source = "./modules/google/r/google_compute_region_backend_service"

  connection_draining_timeout_sec = null
  description                     = null
  health_checks                   = []
  load_balancing_scheme           = null
  name                            = null
  network                         = null
  project                         = null
  protocol                        = null
  region                          = null
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

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
