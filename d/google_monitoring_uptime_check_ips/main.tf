terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

data "google_monitoring_uptime_check_ips" "this" {
}
