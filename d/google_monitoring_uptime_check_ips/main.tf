terraform {
  required_providers {
    google = ">= 3.26.0"
  }
}

data "google_monitoring_uptime_check_ips" "this" {
}

