terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

data "google_redis_instance" "this" {
  name    = var.name
  project = var.project
  region  = var.region
}

