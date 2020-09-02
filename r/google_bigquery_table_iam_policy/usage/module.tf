module "google_bigquery_table_iam_policy" {
  source = "./modules/google/r/google_bigquery_table_iam_policy"

  # dataset_id - (required) is a type of string
  dataset_id = null
  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
  # table_id - (required) is a type of string
  table_id = null
}
