module "google_logging_project_sink" {
  source = "./google/r/google_logging_project_sink"

  destination            = null
  filter                 = null
  name                   = null
  project                = null
  unique_writer_identity = null

  bigquery_options = [{
    use_partitioned_tables = null
  }]
}
