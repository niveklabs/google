terraform {
  required_providers {
    google = ">= 3.11.0"
  }
}

resource "google_pubsub_subscription_iam_binding" "this" {
  members      = var.members
  project      = var.project
  role         = var.role
  subscription = var.subscription
}

