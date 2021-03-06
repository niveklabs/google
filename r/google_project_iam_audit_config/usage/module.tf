module "google_project_iam_audit_config" {
  source = "./modules/google/r/google_project_iam_audit_config"

  # project - (optional) is a type of string
  project = null
  # service - (required) is a type of string
  service = null

  audit_log_config = [{
    exempted_members = []
    log_type         = null
  }]
}
