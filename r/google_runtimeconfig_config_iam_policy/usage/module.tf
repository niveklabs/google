module "google_runtimeconfig_config_iam_policy" {
  source = "./modules/google/r/google_runtimeconfig_config_iam_policy"

  # config - (required) is a type of string
  config = null
  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
}
