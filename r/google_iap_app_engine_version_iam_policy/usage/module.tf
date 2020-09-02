module "google_iap_app_engine_version_iam_policy" {
  source = "./modules/google/r/google_iap_app_engine_version_iam_policy"

  # app_id - (required) is a type of string
  app_id = null
  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
  # service - (required) is a type of string
  service = null
  # version_id - (required) is a type of string
  version_id = null
}
