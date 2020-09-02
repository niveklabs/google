terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_healthcare_dataset_iam_member" "this" {
  dataset_id = var.dataset_id
  member     = var.member
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

