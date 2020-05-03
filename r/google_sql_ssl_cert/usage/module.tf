module "google_sql_ssl_cert" {
  source = "./modules/google/r/google_sql_ssl_cert"

  common_name = null
  instance    = null
  project     = null
}
