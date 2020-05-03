terraform {
  required_providers {
    google = ">= 3.15.0"
  }
}

resource "google_dataproc_cluster_iam_binding" "this" {
  cluster = var.cluster
  members = var.members
  project = var.project
  region  = var.region
  role    = var.role
}

