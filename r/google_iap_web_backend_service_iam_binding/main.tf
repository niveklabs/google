terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_iap_web_backend_service_iam_binding" "this" {
  members             = var.members
  project             = var.project
  role                = var.role
  web_backend_service = var.web_backend_service

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

