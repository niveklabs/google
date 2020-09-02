terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

data "google_netblock_ip_ranges" "this" {
  range_type = var.range_type
}

