terraform {
  required_providers {
    google = ">= 3.31.0"
  }
}

resource "google_logging_folder_sink" "this" {
  destination      = var.destination
  filter           = var.filter
  folder           = var.folder
  include_children = var.include_children
  name             = var.name

  dynamic "bigquery_options" {
    for_each = var.bigquery_options
    content {
      use_partitioned_tables = bigquery_options.value["use_partitioned_tables"]
    }
  }

}

