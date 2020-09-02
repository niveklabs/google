terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_cloud_run_service_iam_member" "this" {
  location = var.location
  member   = var.member
  project  = var.project
  role     = var.role
  service  = var.service

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

