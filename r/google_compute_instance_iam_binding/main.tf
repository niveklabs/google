terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_compute_instance_iam_binding" "this" {
  instance_name = var.instance_name
  members       = var.members
  project       = var.project
  role          = var.role
  zone          = var.zone

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

