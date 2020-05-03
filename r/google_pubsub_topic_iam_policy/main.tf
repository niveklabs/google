terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_pubsub_topic_iam_policy" "this" {
  policy_data = var.policy_data
  project     = var.project
  topic       = var.topic
}

