module "google_logging_folder_sink" {
  source = "./modules/google/r/google_logging_folder_sink"

  # destination - (required) is a type of string
  destination = null
  # filter - (optional) is a type of string
  filter = null
  # folder - (required) is a type of string
  folder = null
  # include_children - (optional) is a type of bool
  include_children = null
  # name - (required) is a type of string
  name = null

  bigquery_options = [{
    use_partitioned_tables = null
  }]
}
