terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

resource "google_billing_account_iam_binding" "this" {
  billing_account_id = var.billing_account_id
  members            = var.members
  role               = var.role

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

