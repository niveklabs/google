terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_spanner_instance_iam_member" "this" {
  instance = var.instance
  member   = var.member
  project  = var.project
  role     = var.role

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

