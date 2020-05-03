module "google_iap_web_backend_service_iam_member" {
  source = "./modules/google/r/google_iap_web_backend_service_iam_member"

  member              = null
  project             = null
  role                = null
  web_backend_service = null
}
