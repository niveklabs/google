module "google_iam_policy" {
  source = "./google/d/google_iam_policy"


  audit_config = [{
    audit_log_configs = [{
      exempted_members = []
      log_type         = null
    }]
    service = null
  }]

  binding = [{
    members = []
    role    = null
  }]
}
