module "google_iap_web_backend_service_iam_binding" {
  source = "./google/r/google_iap_web_backend_service_iam_binding"

  members             = []
  project             = null
  role                = null
  web_backend_service = null
}
