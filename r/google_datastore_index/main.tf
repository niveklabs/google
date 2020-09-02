terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

resource "google_datastore_index" "this" {
  ancestor = var.ancestor
  kind     = var.kind
  project  = var.project

  dynamic "properties" {
    for_each = var.properties
    content {
      direction = properties.value["direction"]
      name      = properties.value["name"]
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

