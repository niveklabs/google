terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

data "google_iam_role" "this" {
  name = var.name
}

