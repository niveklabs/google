terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

data "google_compute_lb_ip_ranges" "this" {
}

