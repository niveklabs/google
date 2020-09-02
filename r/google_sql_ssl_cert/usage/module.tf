module "google_sql_ssl_cert" {
  source = "./modules/google/r/google_sql_ssl_cert"

  # common_name - (required) is a type of string
  common_name = null
  # instance - (required) is a type of string
  instance = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
  }]
}
