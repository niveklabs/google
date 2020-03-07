module "google_logging_billing_account_sink" {
  source = "./google/r/google_logging_billing_account_sink"

  billing_account = null
  destination     = null
  filter          = null
  name            = null

  bigquery_options = [{
    use_partitioned_tables = null
  }]
}
