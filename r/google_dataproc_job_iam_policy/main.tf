terraform {
  required_providers {
    google = ">= 3.24.0"
  }
}

resource "google_dataproc_job_iam_policy" "this" {
  job_id      = var.job_id
  policy_data = var.policy_data
  project     = var.project
  region      = var.region
}

