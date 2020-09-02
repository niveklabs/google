terraform {
  required_providers {
    google = ">= 3.35.0"
  }
}

data "google_monitoring_uptime_check_ips" "this" {
}

