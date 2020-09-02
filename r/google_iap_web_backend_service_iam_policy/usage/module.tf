module "google_iap_web_backend_service_iam_policy" {
  source = "./modules/google/r/google_iap_web_backend_service_iam_policy"

  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
  # web_backend_service - (required) is a type of string
  web_backend_service = null
}
