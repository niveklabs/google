terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

resource "google_network_management_connectivity_test" "this" {
  description      = var.description
  labels           = var.labels
  name             = var.name
  project          = var.project
  protocol         = var.protocol
  related_projects = var.related_projects

  dynamic "destination" {
    for_each = var.destination
    content {
      instance   = destination.value["instance"]
      ip_address = destination.value["ip_address"]
      network    = destination.value["network"]
      port       = destination.value["port"]
      project_id = destination.value["project_id"]
    }
  }

  dynamic "source" {
    for_each = var.source
    content {
      instance     = source.value["instance"]
      ip_address   = source.value["ip_address"]
      network      = source.value["network"]
      network_type = source.value["network_type"]
      port         = source.value["port"]
      project_id   = source.value["project_id"]
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

