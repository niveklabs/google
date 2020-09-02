module "google_bigquery_default_service_account" {
  source = "./modules/google/d/google_bigquery_default_service_account"

  # project - (optional) is a type of string
  project = null
}
