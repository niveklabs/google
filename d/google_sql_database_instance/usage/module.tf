module "google_sql_database_instance" {
  source = "./modules/google/d/google_sql_database_instance"

  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
}
