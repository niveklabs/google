terraform {
  required_providers {
    google = ">= 3.14.0"
  }
}

resource "google_project" "this" {
  auto_create_network = var.auto_create_network
  billing_account     = var.billing_account
  folder_id           = var.folder_id
  labels              = var.labels
  name                = var.name
  org_id              = var.org_id
  project_id          = var.project_id
  skip_delete         = var.skip_delete

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

