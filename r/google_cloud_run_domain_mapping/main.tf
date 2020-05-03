terraform {
  required_providers {
    google = ">= 3.15.0"
  }
}

resource "google_cloud_run_domain_mapping" "this" {
  location = var.location
  name     = var.name
  project  = var.project

  dynamic "metadata" {
    for_each = var.metadata
    content {
      annotations = metadata.value["annotations"]
      labels      = metadata.value["labels"]
      namespace   = metadata.value["namespace"]
    }
  }

  dynamic "spec" {
    for_each = var.spec
    content {
      certificate_mode = spec.value["certificate_mode"]
      force_override   = spec.value["force_override"]
      route_name       = spec.value["route_name"]
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

