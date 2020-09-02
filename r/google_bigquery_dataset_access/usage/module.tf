module "google_bigquery_dataset_access" {
  source = "./modules/google/r/google_bigquery_dataset_access"

  # dataset_id - (required) is a type of string
  dataset_id = null
  # domain - (optional) is a type of string
  domain = null
  # group_by_email - (optional) is a type of string
  group_by_email = null
  # iam_member - (optional) is a type of string
  iam_member = null
  # project - (optional) is a type of string
  project = null
  # role - (optional) is a type of string
  role = null
  # special_group - (optional) is a type of string
  special_group = null
  # user_by_email - (optional) is a type of string
  user_by_email = null

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
