module "google_logging_billing_account_sink" {
  source = "./modules/google/r/google_logging_billing_account_sink"

  # billing_account - (required) is a type of string
  billing_account = null
  # destination - (required) is a type of string
  destination = null
  # filter - (optional) is a type of string
  filter = null
  # name - (required) is a type of string
  name = null

  bigquery_options = [{
    use_partitioned_tables = null
  }]
}
