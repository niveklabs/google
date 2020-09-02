terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_compute_image_iam_member" "this" {
  image   = var.image
  member  = var.member
  project = var.project
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

