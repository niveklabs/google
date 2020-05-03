module "google_sql_user" {
  source = "./modules/google/r/google_sql_user"

  host     = null
  instance = null
  name     = null
  password = null
  project  = null
}
