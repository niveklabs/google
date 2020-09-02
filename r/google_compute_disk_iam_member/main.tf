terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_compute_disk_iam_member" "this" {
  member  = var.member
  name    = var.name
  project = var.project
  role    = var.role
  zone    = var.zone

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

