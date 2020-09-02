terraform {
  required_providers {
    google = ">= 3.27.0"
  }
}

resource "google_logging_project_sink" "this" {
  destination            = var.destination
  filter                 = var.filter
  name                   = var.name
  project                = var.project
  unique_writer_identity = var.unique_writer_identity

  dynamic "bigquery_options" {
    for_each = var.bigquery_options
    content {
      use_partitioned_tables = bigquery_options.value["use_partitioned_tables"]
    }
  }

}

