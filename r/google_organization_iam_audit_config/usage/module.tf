module "google_organization_iam_audit_config" {
  source = "./modules/google/r/google_organization_iam_audit_config"

  # org_id - (required) is a type of string
  org_id = null
  # service - (required) is a type of string
  service = null

  audit_log_config = [{
    exempted_members = []
    log_type         = null
  }]
}
