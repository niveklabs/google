module "google_spanner_database" {
  source = "./modules/google/r/google_spanner_database"

  # ddl - (optional) is a type of list of string
  ddl = []
  # instance - (required) is a type of string
  instance = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
  }]
}
