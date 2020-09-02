terraform {
  required_providers {
    google = ">= 3.32.0"
  }
}

resource "google_monitoring_metric_descriptor" "this" {
  description  = var.description
  display_name = var.display_name
  launch_stage = var.launch_stage
  metric_kind  = var.metric_kind
  project      = var.project
  type         = var.type
  unit         = var.unit
  value_type   = var.value_type

  dynamic "labels" {
    for_each = var.labels
    content {
      description = labels.value["description"]
      key         = labels.value["key"]
      value_type  = labels.value["value_type"]
    }
  }

  dynamic "metadata" {
    for_each = var.metadata
    content {
      ingest_delay  = metadata.value["ingest_delay"]
      sample_period = metadata.value["sample_period"]
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

