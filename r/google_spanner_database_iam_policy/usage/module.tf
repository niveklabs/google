module "google_spanner_database_iam_policy" {
  source = "./modules/google/r/google_spanner_database_iam_policy"

  # database - (required) is a type of string
  database = null
  # instance - (required) is a type of string
  instance = null
  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
}
