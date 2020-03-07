module "google_compute_target_pool" {
  source = "./google/r/google_compute_target_pool"

  backup_pool      = null
  description      = null
  failover_ratio   = null
  health_checks    = []
  instances        = []
  name             = null
  project          = null
  region           = null
  session_affinity = null
}
