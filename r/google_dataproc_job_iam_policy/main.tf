terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_dataproc_job_iam_policy" "this" {
  job_id      = var.job_id
  policy_data = var.policy_data
  project     = var.project
  region      = var.region
}

