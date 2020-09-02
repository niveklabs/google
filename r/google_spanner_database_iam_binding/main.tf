terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

resource "google_spanner_database_iam_binding" "this" {
  database = var.database
  instance = var.instance
  members  = var.members
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

