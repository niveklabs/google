module "google_iap_web_iam_binding" {
  source = "./modules/google/r/google_iap_web_iam_binding"

  # members - (required) is a type of set of string
  members = []
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
}
