module "google_folder_iam_audit_config" {
  source = "./modules/google/r/google_folder_iam_audit_config"

  # folder - (required) is a type of string
  folder = null
  # service - (required) is a type of string
  service = null

  audit_log_config = [{
    exempted_members = []
    log_type         = null
  }]
}
