module "google_monitoring_group" {
  source = "./modules/google/r/google_monitoring_group"

  # display_name - (required) is a type of string
  display_name = null
  # filter - (required) is a type of string
  filter = null
  # is_cluster - (optional) is a type of bool
  is_cluster = null
  # parent_name - (optional) is a type of string
  parent_name = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
