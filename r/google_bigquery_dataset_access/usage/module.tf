module "google_bigquery_dataset_access" {
  source = "./modules/google/r/google_bigquery_dataset_access"

  dataset_id     = null
  domain         = null
  group_by_email = null
  iam_member     = null
  project        = null
  role           = null
  special_group  = null
  user_by_email  = null

  timeouts = [{
    create = null
    delete = null
  }]

  view = [{
    dataset_id = null
    project_id = null
    table_id   = null
  }]
}
