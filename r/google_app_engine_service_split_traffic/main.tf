terraform {
  required_providers {
    google = ">= 3.33.0"
  }
}

resource "google_app_engine_service_split_traffic" "this" {
  migrate_traffic = var.migrate_traffic
  project         = var.project
  service         = var.service

  dynamic "split" {
    for_each = var.split
    content {
      allocations = split.value["allocations"]
      shard_by    = split.value["shard_by"]
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

