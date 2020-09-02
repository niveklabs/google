terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_organization_iam_binding" "this" {
  members = var.members
  org_id  = var.org_id
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

