terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

data "google_iam_role" "this" {
  name = var.name
}

