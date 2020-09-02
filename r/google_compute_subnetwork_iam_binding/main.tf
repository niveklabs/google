terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_compute_subnetwork_iam_binding" "this" {
  members    = var.members
  project    = var.project
  region     = var.region
  role       = var.role
  subnetwork = var.subnetwork

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

