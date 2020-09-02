terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

data "google_iam_testable_permissions" "this" {
  custom_support_level = var.custom_support_level
  full_resource_name   = var.full_resource_name
  stages               = var.stages
}

