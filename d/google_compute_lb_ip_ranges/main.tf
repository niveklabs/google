terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

data "google_compute_lb_ip_ranges" "this" {
}

