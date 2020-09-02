terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_dataproc_job_iam_member" "this" {
  job_id  = var.job_id
  member  = var.member
  project = var.project
  region  = var.region
  role    = var.role
}

