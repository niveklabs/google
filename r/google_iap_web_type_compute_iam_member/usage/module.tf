module "google_iap_web_type_compute_iam_member" {
  source = "./modules/google/r/google_iap_web_type_compute_iam_member"

  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
}
