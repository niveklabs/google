terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_project_iam_audit_config" "this" {
  project = var.project
  service = var.service

  dynamic "audit_log_config" {
    for_each = var.audit_log_config
    content {
      exempted_members = audit_log_config.value["exempted_members"]
      log_type         = audit_log_config.value["log_type"]
    }
  }

}

