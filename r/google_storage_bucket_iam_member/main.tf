terraform {
  required_providers {
    google = ">= 3.30.0"
  }
}

resource "google_storage_bucket_iam_member" "this" {
  bucket = var.bucket
  member = var.member
  role   = var.role

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

