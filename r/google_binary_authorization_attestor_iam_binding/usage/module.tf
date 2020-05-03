module "google_binary_authorization_attestor_iam_binding" {
  source = "./modules/google/r/google_binary_authorization_attestor_iam_binding"

  attestor = null
  members  = []
  project  = null
  role     = null
}
