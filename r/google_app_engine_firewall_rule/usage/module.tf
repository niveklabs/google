module "google_app_engine_firewall_rule" {
  source = "./modules/google/r/google_app_engine_firewall_rule"

  # action - (required) is a type of string
  action = null
  # description - (optional) is a type of string
  description = null
  # priority - (optional) is a type of number
  priority = null
  # project - (optional) is a type of string
  project = null
  # source_range - (required) is a type of string
  source_range = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
