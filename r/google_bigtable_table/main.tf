terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

resource "google_bigtable_table" "this" {
  instance_name = var.instance_name
  name          = var.name
  project       = var.project
  split_keys    = var.split_keys

  dynamic "column_family" {
    for_each = var.column_family
    content {
      family = column_family.value["family"]
    }
  }

}

