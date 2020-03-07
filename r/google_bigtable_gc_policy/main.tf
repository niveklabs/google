terraform {
  required_providers {
    google = ">= 3.11.0"
  }
}

resource "google_bigtable_gc_policy" "this" {
  column_family = var.column_family
  instance_name = var.instance_name
  mode          = var.mode
  project       = var.project
  table         = var.table

  dynamic "max_age" {
    for_each = var.max_age
    content {
      days = max_age.value["days"]
    }
  }

  dynamic "max_version" {
    for_each = var.max_version
    content {
      number = max_version.value["number"]
    }
  }

}

