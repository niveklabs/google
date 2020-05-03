module "google_dialogflow_intent" {
  source = "./modules/google/r/google_dialogflow_intent"

  action                      = null
  default_response_platforms  = []
  display_name                = null
  events                      = []
  input_context_names         = []
  is_fallback                 = null
  ml_disabled                 = null
  parent_followup_intent_name = null
  priority                    = null
  project                     = null
  reset_contexts              = null
  webhook_state               = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
