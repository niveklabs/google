terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_dataproc_cluster_iam_binding" "this" {
  cluster = var.cluster
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

