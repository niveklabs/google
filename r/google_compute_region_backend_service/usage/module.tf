module "google_compute_region_backend_service" {
  source = "./modules/google/r/google_compute_region_backend_service"

  # connection_draining_timeout_sec - (optional) is a type of number
  connection_draining_timeout_sec = null
  # description - (optional) is a type of string
  description = null
  # health_checks - (required) is a type of set of string
  health_checks = []
  # load_balancing_scheme - (optional) is a type of string
  load_balancing_scheme = null
  # name - (required) is a type of string
  name = null
  # network - (optional) is a type of string
  network = null
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
