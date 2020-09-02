terraform {
  required_providers {
    google = ">= 3.31.0"
  }
}

resource "google_billing_account_iam_member" "this" {
  billing_account_id = var.billing_account_id
  member             = var.member
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

