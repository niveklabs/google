module "google_endpoints_service_iam_binding" {
  source = "./modules/google/r/google_endpoints_service_iam_binding"

  # members - (required) is a type of set of string
  members = []
  # role - (required) is a type of string
  role = null
  # service_name - (required) is a type of string
  service_name = null
}
