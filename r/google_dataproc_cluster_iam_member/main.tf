terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_dataproc_cluster_iam_member" "this" {
  cluster = var.cluster
  member  = var.member
  project = var.project
  region  = var.region
  role    = var.role
}

