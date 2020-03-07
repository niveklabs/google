module "google_compute_firewall" {
  source = "./google/r/google_compute_firewall"

  description             = null
  destination_ranges      = []
  direction               = null
  disabled                = null
  enable_logging          = null
  name                    = null
  network                 = null
  priority                = null
  project                 = null
  source_ranges           = []
  source_service_accounts = []
  source_tags             = []
  target_service_accounts = []
  target_tags             = []

  allow = [{
    ports    = []
    protocol = null
  }]

  deny = [{
    ports    = []
    protocol = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
