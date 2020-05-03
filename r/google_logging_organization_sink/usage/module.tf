module "google_logging_organization_sink" {
  source = "./modules/google/r/google_logging_organization_sink"

  destination      = null
  filter           = null
  include_children = null
  name             = null
  org_id           = null

  bigquery_options = [{
    use_partitioned_tables = null
  }]
}
