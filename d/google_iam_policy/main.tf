terraform {
  required_providers {
    google = ">= 3.20.0"
  }
}

data "google_iam_policy" "this" {

  dynamic "audit_config" {
    for_each = var.audit_config
    content {
      service = audit_config.value["service"]

      dynamic "audit_log_configs" {
        for_each = audit_config.value.audit_log_configs
        content {
          exempted_members = audit_log_configs.value["exempted_members"]
          log_type         = audit_log_configs.value["log_type"]
        }
      }

    }
  }

  dynamic "binding" {
    for_each = var.binding
    content {
      members = binding.value["members"]
      role    = binding.value["role"]
    }
  }

}

