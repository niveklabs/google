terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_compute_node_template" "this" {
  description          = var.description
  name                 = var.name
  node_affinity_labels = var.node_affinity_labels
  node_type            = var.node_type
  project              = var.project
  region               = var.region

  dynamic "node_type_flexibility" {
    for_each = var.node_type_flexibility
    content {
      cpus   = node_type_flexibility.value["cpus"]
      memory = node_type_flexibility.value["memory"]
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

