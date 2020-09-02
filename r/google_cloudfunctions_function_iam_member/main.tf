terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

resource "google_cloudfunctions_function_iam_member" "this" {
  cloud_function = var.cloud_function
  member         = var.member
  project        = var.project
  region         = var.region
  role           = var.role

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

