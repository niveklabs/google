terraform {
  required_providers {
    google = ">= 3.18.0"
  }
}

data "google_compute_lb_ip_ranges" "this" {
}

