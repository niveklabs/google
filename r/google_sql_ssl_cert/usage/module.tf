module "google_sql_ssl_cert" {
  source = "./google/r/google_sql_ssl_cert"

  common_name = null
  instance    = null
  project     = null
}
