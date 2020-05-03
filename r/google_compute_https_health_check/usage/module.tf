module "google_compute_https_health_check" {
  source = "./modules/google/r/google_compute_https_health_check"

  check_interval_sec  = null
  description         = null
  healthy_threshold   = null
  host                = null
  name                = null
  port                = null
  project             = null
  request_path        = null
  timeout_sec         = null
  unhealthy_threshold = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
