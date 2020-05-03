module "google_spanner_database" {
  source = "./modules/google/r/google_spanner_database"

  ddl      = []
  instance = null
  name     = null
  project  = null

  timeouts = [{
    create = null
    delete = null
  }]
}
