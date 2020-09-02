module "google_iap_app_engine_version_iam_member" {
  source = "./modules/google/r/google_iap_app_engine_version_iam_member"

  # app_id - (required) is a type of string
  app_id = null
  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
  # service - (required) is a type of string
  service = null
  # version_id - (required) is a type of string
  version_id = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
