module "google_logging_metric" {
  source = "./modules/google/r/google_logging_metric"

  description      = null
  filter           = null
  label_extractors = {}
  name             = null
  project          = null
  value_extractor  = null

  bucket_options = [{
    explicit_buckets = [{
      bounds = []
    }]
    exponential_buckets = [{
      growth_factor      = null
      num_finite_buckets = null
      scale              = null
    }]
    linear_buckets = [{
      num_finite_buckets = null
      offset             = null
      width              = null
    }]
  }]

  metric_descriptor = [{
    display_name = null
    labels = [{
      description = null
      key         = null
      value_type  = null
    }]
    metric_kind = null
    unit        = null
    value_type  = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
