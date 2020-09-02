terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

data "google_netblock_ip_ranges" "this" {
  range_type = var.range_type
}

