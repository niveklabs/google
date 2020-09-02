terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_pubsub_subscription_iam_policy" "this" {
  policy_data  = var.policy_data
  project      = var.project
  subscription = var.subscription
}

