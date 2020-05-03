terraform {
  required_providers {
    google = ">= 3.15.0"
  }
}

resource "google_bigtable_instance" "this" {
  display_name  = var.display_name
  instance_type = var.instance_type
  name          = var.name
  project       = var.project

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

