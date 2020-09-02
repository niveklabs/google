module "google_logging_project_sink" {
  source = "./modules/google/r/google_logging_project_sink"

  # destination - (required) is a type of string
  destination = null
  # filter - (optional) is a type of string
  filter = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # unique_writer_identity - (optional) is a type of bool
  unique_writer_identity = null

  bigquery_options = [{
    use_partitioned_tables = null
  }]
}
