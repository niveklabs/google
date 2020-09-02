terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

data "google_netblock_ip_ranges" "this" {
  range_type = var.range_type
}

