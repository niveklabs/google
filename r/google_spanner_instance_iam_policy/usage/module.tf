module "google_spanner_instance_iam_policy" {
  source = "./modules/google/r/google_spanner_instance_iam_policy"

  # instance - (required) is a type of string
  instance = null
  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
}
