module "google_iap_web_iam_binding" {
  source = "./modules/google/r/google_iap_web_iam_binding"

  members = []
  project = null
  role    = null
}
