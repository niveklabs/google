terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

data "google_monitoring_uptime_check_ips" "this" {
}

