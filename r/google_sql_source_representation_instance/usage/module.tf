module "google_sql_source_representation_instance" {
  source = "./modules/google/r/google_sql_source_representation_instance"

  database_version = null
  host             = null
  name             = null
  port             = null
  project          = null
  region           = null

  timeouts = [{
    create = null
    delete = null
  }]
}
