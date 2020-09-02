module "google_compute_target_pool" {
  source = "./modules/google/r/google_compute_target_pool"

  # backup_pool - (optional) is a type of string
  backup_pool = null
  # description - (optional) is a type of string
  description = null
  # failover_ratio - (optional) is a type of number
  failover_ratio = null
  # health_checks - (optional) is a type of list of string
  health_checks = []
  # instances - (optional) is a type of set of string
  instances = []
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # session_affinity - (optional) is a type of string
  session_affinity = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
