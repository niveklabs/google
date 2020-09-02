terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_healthcare_dataset_iam_binding" "this" {
  dataset_id = var.dataset_id
  members    = var.members
  role       = var.role

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

