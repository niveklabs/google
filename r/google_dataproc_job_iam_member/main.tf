terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_dataproc_job_iam_member" "this" {
  job_id  = var.job_id
  member  = var.member
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

