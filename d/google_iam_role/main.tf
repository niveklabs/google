terraform {
  required_providers {
    google = ">= 3.19.0"
  }
}

data "google_iam_role" "this" {
  name = var.name
}

