terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

resource "google_service_account_iam_binding" "this" {
  members            = var.members
  role               = var.role
  service_account_id = var.service_account_id

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

