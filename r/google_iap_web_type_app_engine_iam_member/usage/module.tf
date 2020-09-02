module "google_iap_web_type_app_engine_iam_member" {
  source = "./modules/google/r/google_iap_web_type_app_engine_iam_member"

  # app_id - (required) is a type of string
  app_id = null
  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
}
