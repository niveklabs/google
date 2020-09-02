terraform {
  required_providers {
    google = ">= 3.23.0"
  }
}

resource "google_dialogflow_entity_type" "this" {
  display_name            = var.display_name
  enable_fuzzy_extraction = var.enable_fuzzy_extraction
  kind                    = var.kind
  project                 = var.project

  dynamic "entities" {
    for_each = var.entities
    content {
      synonyms = entities.value["synonyms"]
      value    = entities.value["value"]
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

