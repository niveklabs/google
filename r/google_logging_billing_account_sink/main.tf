terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_logging_billing_account_sink" "this" {
  billing_account = var.billing_account
  destination     = var.destination
  filter          = var.filter
  name            = var.name

  dynamic "bigquery_options" {
    for_each = var.bigquery_options
    content {
      use_partitioned_tables = bigquery_options.value["use_partitioned_tables"]
    }
  }

}

