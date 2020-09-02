module "google_iap_web_backend_service_iam_member" {
  source = "./modules/google/r/google_iap_web_backend_service_iam_member"

  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
  # web_backend_service - (required) is a type of string
  web_backend_service = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
