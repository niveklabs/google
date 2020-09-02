terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

resource "google_dialogflow_intent" "this" {
  action                      = var.action
  default_response_platforms  = var.default_response_platforms
  display_name                = var.display_name
  events                      = var.events
  input_context_names         = var.input_context_names
  is_fallback                 = var.is_fallback
  ml_disabled                 = var.ml_disabled
  parent_followup_intent_name = var.parent_followup_intent_name
  priority                    = var.priority
  project                     = var.project
  reset_contexts              = var.reset_contexts
  webhook_state               = var.webhook_state

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

