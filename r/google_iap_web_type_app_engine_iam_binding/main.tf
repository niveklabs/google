terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_iap_web_type_app_engine_iam_binding" "this" {
  app_id  = var.app_id
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

