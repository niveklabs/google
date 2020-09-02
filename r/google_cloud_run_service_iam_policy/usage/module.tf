module "google_cloud_run_service_iam_policy" {
  source = "./modules/google/r/google_cloud_run_service_iam_policy"

  # location - (optional) is a type of string
  location = null
  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
  # service - (required) is a type of string
  service = null
}
