module "google_compute_subnetwork" {
  source = "./modules/google/r/google_compute_subnetwork"

  description              = null
  enable_flow_logs         = null
  ip_cidr_range            = null
  name                     = null
  network                  = null
  private_ip_google_access = null
  project                  = null
  region                   = null
  secondary_ip_range = [{
    ip_cidr_range = null
    range_name    = null
  }]

  log_config = [{
    aggregation_interval = null
    flow_sampling        = null
    metadata             = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
