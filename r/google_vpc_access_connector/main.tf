terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

resource "google_vpc_access_connector" "this" {
  ip_cidr_range  = var.ip_cidr_range
  max_throughput = var.max_throughput
  min_throughput = var.min_throughput
  name           = var.name
  network        = var.network
  project        = var.project
  region         = var.region

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

