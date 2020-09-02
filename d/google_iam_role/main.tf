terraform {
  required_providers {
    google = ">= 3.29.0"
  }
}

data "google_iam_role" "this" {
  name = var.name
}

