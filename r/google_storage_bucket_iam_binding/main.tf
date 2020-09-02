terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_storage_bucket_iam_binding" "this" {
  bucket  = var.bucket
  members = var.members
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

