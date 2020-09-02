terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_binary_authorization_attestor_iam_member" "this" {
  attestor = var.attestor
  member   = var.member
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

