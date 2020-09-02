module "google_endpoints_service_iam_member" {
  source = "./modules/google/r/google_endpoints_service_iam_member"

  # member - (required) is a type of string
  member = null
  # role - (required) is a type of string
  role = null
  # service_name - (required) is a type of string
  service_name = null
}
