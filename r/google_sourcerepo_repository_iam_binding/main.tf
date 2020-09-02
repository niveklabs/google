terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

resource "google_sourcerepo_repository_iam_binding" "this" {
  members    = var.members
  project    = var.project
  repository = var.repository
  role       = var.role

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

