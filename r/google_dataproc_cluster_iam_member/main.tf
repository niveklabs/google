terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

resource "google_dataproc_cluster_iam_member" "this" {
  cluster = var.cluster
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

