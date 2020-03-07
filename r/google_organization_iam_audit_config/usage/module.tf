module "google_organization_iam_audit_config" {
  source = "./google/r/google_organization_iam_audit_config"

  org_id  = null
  service = null

  audit_log_config = [{
    exempted_members = []
    log_type         = null
  }]
}
