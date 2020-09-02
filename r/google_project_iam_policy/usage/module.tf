module "google_project_iam_policy" {
  source = "./modules/google/r/google_project_iam_policy"

  # policy_data - (required) is a type of string
  policy_data = null
  # project - (required) is a type of string
  project = null
}
