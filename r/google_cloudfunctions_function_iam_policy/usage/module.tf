module "google_cloudfunctions_function_iam_policy" {
  source = "./modules/google/r/google_cloudfunctions_function_iam_policy"

  # cloud_function - (required) is a type of string
  cloud_function = null
  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
}
