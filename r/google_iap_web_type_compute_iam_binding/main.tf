terraform {
  required_providers {
    google = ">= 3.31.0"
  }
}

resource "google_iap_web_type_compute_iam_binding" "this" {
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

