terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_runtimeconfig_config_iam_member" "this" {
  config  = var.config
  member  = var.member
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

