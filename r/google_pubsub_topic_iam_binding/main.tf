terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

resource "google_pubsub_topic_iam_binding" "this" {
  members = var.members
  project = var.project
  role    = var.role
  topic   = var.topic
}

