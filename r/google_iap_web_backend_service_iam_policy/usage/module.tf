module "google_iap_web_backend_service_iam_policy" {
  source = "./modules/google/r/google_iap_web_backend_service_iam_policy"

  policy_data         = null
  project             = null
  web_backend_service = null
}
