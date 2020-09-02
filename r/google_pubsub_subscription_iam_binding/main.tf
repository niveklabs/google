terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_pubsub_subscription_iam_binding" "this" {
  members      = var.members
  project      = var.project
  role         = var.role
  subscription = var.subscription

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

