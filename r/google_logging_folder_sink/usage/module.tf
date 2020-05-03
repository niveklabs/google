module "google_logging_folder_sink" {
  source = "./modules/google/r/google_logging_folder_sink"

  destination      = null
  filter           = null
  folder           = null
  include_children = null
  name             = null

  bigquery_options = [{
    use_partitioned_tables = null
  }]
}
