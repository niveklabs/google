terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

resource "google_binary_authorization_attestor_iam_binding" "this" {
  attestor = var.attestor
  members  = var.members
  project  = var.project
  role     = var.role

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

