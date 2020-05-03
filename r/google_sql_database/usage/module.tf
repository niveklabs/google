module "google_sql_database" {
  source = "./modules/google/r/google_sql_database"

  charset   = null
  collation = null
  instance  = null
  name      = null
  project   = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
