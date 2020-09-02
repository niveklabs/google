terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_endpoints_service_iam_member" "this" {
  member       = var.member
  role         = var.role
  service_name = var.service_name

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

