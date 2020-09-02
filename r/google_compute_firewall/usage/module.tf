module "google_compute_firewall" {
  source = "./modules/google/r/google_compute_firewall"

  # description - (optional) is a type of string
  description = null
  # destination_ranges - (optional) is a type of set of string
  destination_ranges = []
  # direction - (optional) is a type of string
  direction = null
  # disabled - (optional) is a type of bool
  disabled = null
  # enable_logging - (optional) is a type of bool
  enable_logging = null
  # name - (required) is a type of string
  name = null
  # network - (required) is a type of string
  network = null
  # priority - (optional) is a type of number
  priority = null
  # project - (optional) is a type of string
  project = null
  # source_ranges - (optional) is a type of set of string
  source_ranges = []
  # source_service_accounts - (optional) is a type of set of string
  source_service_accounts = []
  # source_tags - (optional) is a type of set of string
  source_tags = []
  # target_service_accounts - (optional) is a type of set of string
  target_service_accounts = []
  # target_tags - (optional) is a type of set of string
  target_tags = []

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
