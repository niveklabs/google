terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

resource "google_dataproc_job_iam_binding" "this" {
  job_id  = var.job_id
  members = var.members
  project = var.project
  region  = var.region
  role    = var.role

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

