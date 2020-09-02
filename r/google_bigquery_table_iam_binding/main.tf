terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_bigquery_table_iam_binding" "this" {
  dataset_id = var.dataset_id
  members    = var.members
  project    = var.project
  role       = var.role
  table_id   = var.table_id

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

