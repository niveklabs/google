terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

resource "google_firestore_index" "this" {
  collection  = var.collection
  database    = var.database
  project     = var.project
  query_scope = var.query_scope

  dynamic "fields" {
    for_each = var.fields
    content {
      array_config = fields.value["array_config"]
      field_path   = fields.value["field_path"]
      order        = fields.value["order"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

