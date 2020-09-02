terraform {
  required_providers {
    google = ">= 3.28.0"
  }
}

resource "google_organization_iam_audit_config" "this" {
  org_id  = var.org_id
  service = var.service

  dynamic "audit_log_config" {
    for_each = var.audit_log_config
    content {
      exempted_members = audit_log_config.value["exempted_members"]
      log_type         = audit_log_config.value["log_type"]
    }
  }

}

