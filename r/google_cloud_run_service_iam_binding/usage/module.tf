module "google_cloud_run_service_iam_binding" {
  source = "./modules/google/r/google_cloud_run_service_iam_binding"

  # location - (optional) is a type of string
  location = null
  # members - (required) is a type of set of string
  members = []
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
  # service - (required) is a type of string
  service = null
}
