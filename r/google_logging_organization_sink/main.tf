terraform {
  required_providers {
    google = ">= 3.13.0"
  }
}

resource "google_logging_organization_sink" "this" {
  destination      = var.destination
  filter           = var.filter
  include_children = var.include_children
  name             = var.name
  org_id           = var.org_id

  dynamic "bigquery_options" {
    for_each = var.bigquery_options
    content {
      use_partitioned_tables = bigquery_options.value["use_partitioned_tables"]
    }
  }

}

