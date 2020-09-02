terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

resource "google_bigtable_instance" "this" {
  deletion_protection = var.deletion_protection
  display_name        = var.display_name
  instance_type       = var.instance_type
  labels              = var.labels
  name                = var.name
  project             = var.project

  dynamic "cluster" {
    for_each = var.cluster
    content {
      cluster_id   = cluster.value["cluster_id"]
      num_nodes    = cluster.value["num_nodes"]
      storage_type = cluster.value["storage_type"]
      zone         = cluster.value["zone"]
    }
  }

}

