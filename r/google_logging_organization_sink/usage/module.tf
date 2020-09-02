module "google_logging_organization_sink" {
  source = "./modules/google/r/google_logging_organization_sink"

  # destination - (required) is a type of string
  destination = null
  # filter - (optional) is a type of string
  filter = null
  # include_children - (optional) is a type of bool
  include_children = null
  # name - (required) is a type of string
  name = null
  # org_id - (required) is a type of string
  org_id = null

  bigquery_options = [{
    use_partitioned_tables = null
  }]
}
