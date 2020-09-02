terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_binary_authorization_policy" "this" {
  description                   = var.description
  global_policy_evaluation_mode = var.global_policy_evaluation_mode
  project                       = var.project

  dynamic "admission_whitelist_patterns" {
    for_each = var.admission_whitelist_patterns
    content {
      name_pattern = admission_whitelist_patterns.value["name_pattern"]
    }
  }

  dynamic "cluster_admission_rules" {
    for_each = var.cluster_admission_rules
    content {
      cluster                 = cluster_admission_rules.value["cluster"]
      enforcement_mode        = cluster_admission_rules.value["enforcement_mode"]
      evaluation_mode         = cluster_admission_rules.value["evaluation_mode"]
      require_attestations_by = cluster_admission_rules.value["require_attestations_by"]
    }
  }

  dynamic "default_admission_rule" {
    for_each = var.default_admission_rule
    content {
      enforcement_mode        = default_admission_rule.value["enforcement_mode"]
      evaluation_mode         = default_admission_rule.value["evaluation_mode"]
      require_attestations_by = default_admission_rule.value["require_attestations_by"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

