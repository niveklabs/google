terraform {
  required_providers {
    google = ">= 3.31.0"
  }
}

resource "google_sourcerepo_repository_iam_member" "this" {
  member     = var.member
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

