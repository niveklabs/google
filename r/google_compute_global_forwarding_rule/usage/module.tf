module "google_compute_global_forwarding_rule" {
  source = "./modules/google/r/google_compute_global_forwarding_rule"

  description           = null
  ip_address            = null
  ip_protocol           = null
  ip_version            = null
  load_balancing_scheme = null
  name                  = null
  port_range            = null
  project               = null
  target                = null

  metadata_filters = [{
    filter_labels = [{
      name  = null
      value = null
    }]
    filter_match_criteria = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
