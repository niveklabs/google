terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

resource "google_deployment_manager_deployment" "this" {
  create_policy = var.create_policy
  delete_policy = var.delete_policy
  description   = var.description
  name          = var.name
  preview       = var.preview
  project       = var.project

  dynamic "labels" {
    for_each = var.labels
    content {
      key   = labels.value["key"]
      value = labels.value["value"]
    }
  }

  dynamic "target" {
    for_each = var.target
    content {

      dynamic "config" {
        for_each = target.value.config
        content {
          content = config.value["content"]
        }
      }

      dynamic "imports" {
        for_each = target.value.imports
        content {
          content = imports.value["content"]
          name    = imports.value["name"]
        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

