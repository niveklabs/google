terraform {
  required_providers {
    google = ">= 3.11.0"
  }
}

resource "google_pubsub_subscription_iam_member" "this" {
  member       = var.member
  project      = var.project
  role         = var.role
  subscription = var.subscription
}

