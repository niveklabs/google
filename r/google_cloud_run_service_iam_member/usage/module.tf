module "google_cloud_run_service_iam_member" {
  source = "./modules/google/r/google_cloud_run_service_iam_member"

  # location - (optional) is a type of string
  location = null
  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
  # service - (required) is a type of string
  service = null
}
