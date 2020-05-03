terraform {
  required_providers {
    google = ">= 3.19.0"
  }
}

resource "google_bigtable_app_profile" "this" {
  app_profile_id                = var.app_profile_id
  description                   = var.description
  ignore_warnings               = var.ignore_warnings
  instance                      = var.instance
  multi_cluster_routing_use_any = var.multi_cluster_routing_use_any
  project                       = var.project

  dynamic "single_cluster_routing" {
    for_each = var.single_cluster_routing
    content {
      allow_transactional_writes = single_cluster_routing.value["allow_transactional_writes"]
      cluster_id                 = single_cluster_routing.value["cluster_id"]
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

