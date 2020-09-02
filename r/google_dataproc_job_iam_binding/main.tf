terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

resource "google_dataproc_job_iam_binding" "this" {
  job_id  = var.job_id
  members = var.members
  project = var.project
  region  = var.region
  role    = var.role
}

