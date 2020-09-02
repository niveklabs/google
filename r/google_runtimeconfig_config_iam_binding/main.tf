terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_runtimeconfig_config_iam_binding" "this" {
  config  = var.config
  members = var.members
  project = var.project
  role    = var.role

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

