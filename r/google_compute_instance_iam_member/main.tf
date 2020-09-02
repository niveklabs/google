terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

resource "google_compute_instance_iam_member" "this" {
  instance_name = var.instance_name
  member        = var.member
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

