module "google_secret_manager_secret_iam_policy" {
  source = "./modules/google/r/google_secret_manager_secret_iam_policy"

  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
  # secret_id - (required) is a type of string
  secret_id = null
}
