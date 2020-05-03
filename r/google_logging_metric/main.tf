terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_logging_metric" "this" {
  description      = var.description
  filter           = var.filter
  label_extractors = var.label_extractors
  name             = var.name
  project          = var.project
  value_extractor  = var.value_extractor

  dynamic "bucket_options" {
    for_each = var.bucket_options
    content {

      dynamic "explicit_buckets" {
        for_each = bucket_options.value.explicit_buckets
        content {
          bounds = explicit_buckets.value["bounds"]
        }
      }

      dynamic "exponential_buckets" {
        for_each = bucket_options.value.exponential_buckets
        content {
          growth_factor      = exponential_buckets.value["growth_factor"]
          num_finite_buckets = exponential_buckets.value["num_finite_buckets"]
          scale              = exponential_buckets.value["scale"]
        }
      }

      dynamic "linear_buckets" {
        for_each = bucket_options.value.linear_buckets
        content {
          num_finite_buckets = linear_buckets.value["num_finite_buckets"]
          offset             = linear_buckets.value["offset"]
          width              = linear_buckets.value["width"]
        }
      }

    }
  }

  dynamic "metric_descriptor" {
    for_each = var.metric_descriptor
    content {
      display_name = metric_descriptor.value["display_name"]
      metric_kind  = metric_descriptor.value["metric_kind"]
      unit         = metric_descriptor.value["unit"]
      value_type   = metric_descriptor.value["value_type"]

      dynamic "labels" {
        for_each = metric_descriptor.value.labels
        content {
          description = labels.value["description"]
          key         = labels.value["key"]
          value_type  = labels.value["value_type"]
        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

