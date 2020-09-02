terraform {
  required_providers {
    google = ">= 3.31.0"
  }
}

resource "google_compute_global_forwarding_rule" "this" {
  description           = var.description
  ip_address            = var.ip_address
  ip_protocol           = var.ip_protocol
  ip_version            = var.ip_version
  load_balancing_scheme = var.load_balancing_scheme
  name                  = var.name
  port_range            = var.port_range
  project               = var.project
  target                = var.target

  dynamic "metadata_filters" {
    for_each = var.metadata_filters
    content {
      filter_match_criteria = metadata_filters.value["filter_match_criteria"]

      dynamic "filter_labels" {
        for_each = metadata_filters.value.filter_labels
        content {
          name  = filter_labels.value["name"]
          value = filter_labels.value["value"]
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

