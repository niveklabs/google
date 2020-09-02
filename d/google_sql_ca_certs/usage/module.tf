module "google_sql_ca_certs" {
  source = "./modules/google/d/google_sql_ca_certs"

  # instance - (required) is a type of string
  instance = null
  # project - (optional) is a type of string
  project = null
}
