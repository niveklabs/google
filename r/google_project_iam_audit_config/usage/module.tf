module "google_project_iam_audit_config" {
  source = "./modules/google/r/google_project_iam_audit_config"

  project = null
  service = null

  audit_log_config = [{
    exempted_members = []
    log_type         = null
  }]
}
