terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_dataproc_cluster_iam_policy" "this" {
  cluster     = var.cluster
  policy_data = var.policy_data
  project     = var.project
  region      = var.region
}

