module "google_bigquery_table_iam_member" {
  source = "./modules/google/r/google_bigquery_table_iam_member"

  # dataset_id - (required) is a type of string
  dataset_id = null
  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
  # table_id - (required) is a type of string
  table_id = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
