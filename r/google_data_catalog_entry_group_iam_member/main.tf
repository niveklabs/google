terraform {
  required_providers {
    google = ">= 3.36.0"
  }
}

resource "google_data_catalog_entry_group_iam_member" "this" {
  entry_group = var.entry_group
  member      = var.member
  project     = var.project
  region      = var.region
  role        = var.role

  dynamic "condition" {
    for_each = var.condition
    content {
      description = condition.value["description"]
      expression  = condition.value["expression"]
      title       = condition.value["title"]
    }
  }

}

