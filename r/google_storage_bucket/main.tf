terraform {
  required_providers {
    google = ">= 3.31.0"
  }
}

resource "google_storage_bucket" "this" {
  bucket_policy_only       = var.bucket_policy_only
  default_event_based_hold = var.default_event_based_hold
  force_destroy            = var.force_destroy
  labels                   = var.labels
  location                 = var.location
  name                     = var.name
  project                  = var.project
  requester_pays           = var.requester_pays
  storage_class            = var.storage_class

  dynamic "cors" {
    for_each = var.cors
    content {
      max_age_seconds = cors.value["max_age_seconds"]
      method          = cors.value["method"]
      origin          = cors.value["origin"]
      response_header = cors.value["response_header"]
    }
  }

  dynamic "encryption" {
    for_each = var.encryption
    content {
      default_kms_key_name = encryption.value["default_kms_key_name"]
    }
  }

  dynamic "lifecycle_rule" {
    for_each = var.lifecycle_rule
    content {

      dynamic "action" {
        for_each = lifecycle_rule.value.action
        content {
          storage_class = action.value["storage_class"]
          type          = action.value["type"]
        }
      }

      dynamic "condition" {
        for_each = lifecycle_rule.value.condition
        content {
          age                   = condition.value["age"]
          created_before        = condition.value["created_before"]
          is_live               = condition.value["is_live"]
          matches_storage_class = condition.value["matches_storage_class"]
          num_newer_versions    = condition.value["num_newer_versions"]
          with_state            = condition.value["with_state"]
        }
      }

    }
  }

  dynamic "logging" {
    for_each = var.logging
    content {
      log_bucket        = logging.value["log_bucket"]
      log_object_prefix = logging.value["log_object_prefix"]
    }
  }

  dynamic "retention_policy" {
    for_each = var.retention_policy
    content {
      is_locked        = retention_policy.value["is_locked"]
      retention_period = retention_policy.value["retention_period"]
    }
  }

  dynamic "versioning" {
    for_each = var.versioning
    content {
      enabled = versioning.value["enabled"]
    }
  }

  dynamic "website" {
    for_each = var.website
    content {
      main_page_suffix = website.value["main_page_suffix"]
      not_found_page   = website.value["not_found_page"]
    }
  }

}

