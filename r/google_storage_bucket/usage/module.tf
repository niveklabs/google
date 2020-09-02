module "google_storage_bucket" {
  source = "./modules/google/r/google_storage_bucket"

  # bucket_policy_only - (optional) is a type of bool
  bucket_policy_only = null
  # default_event_based_hold - (optional) is a type of bool
  default_event_based_hold = null
  # force_destroy - (optional) is a type of bool
  force_destroy = null
  # labels - (optional) is a type of map of string
  labels = {}
  # location - (optional) is a type of string
  location = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # requester_pays - (optional) is a type of bool
  requester_pays = null
  # storage_class - (optional) is a type of string
  storage_class = null

  cors = [{
    max_age_seconds = null
    method          = []
    origin          = []
    response_header = []
  }]

  encryption = [{
    default_kms_key_name = null
  }]

  lifecycle_rule = [{
    action = [{
      storage_class = null
      type          = null
    }]
    condition = [{
      age                   = null
      created_before        = null
      is_live               = null
      matches_storage_class = []
      num_newer_versions    = null
      with_state            = null
    }]
  }]

  logging = [{
    log_bucket        = null
    log_object_prefix = null
  }]

  retention_policy = [{
    is_locked        = null
    retention_period = null
  }]

  versioning = [{
    enabled = null
  }]

  website = [{
    main_page_suffix = null
    not_found_page   = null
  }]
}
