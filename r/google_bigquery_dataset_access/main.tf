terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_bigquery_dataset_access" "this" {
  dataset_id     = var.dataset_id
  domain         = var.domain
  group_by_email = var.group_by_email
  iam_member     = var.iam_member
  project        = var.project
  role           = var.role
  special_group  = var.special_group
  user_by_email  = var.user_by_email

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

  dynamic "view" {
    for_each = var.view
    content {
      dataset_id = view.value["dataset_id"]
      project_id = view.value["project_id"]
      table_id   = view.value["table_id"]
    }
  }

}

