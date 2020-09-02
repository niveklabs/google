module "google_runtimeconfig_config_iam_member" {
  source = "./modules/google/r/google_runtimeconfig_config_iam_member"

  # config - (required) is a type of string
  config = null
  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
}
