terraform {
  required_providers {
    google = ">= 3.19.0"
  }
}

resource "google_pubsub_topic_iam_member" "this" {
  member  = var.member
  project = var.project
  role    = var.role
  topic   = var.topic
}

