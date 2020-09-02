module "google_dialogflow_intent" {
  source = "./modules/google/r/google_dialogflow_intent"

  # action - (optional) is a type of string
  action = null
  # default_response_platforms - (optional) is a type of list of string
  default_response_platforms = []
  # display_name - (required) is a type of string
  display_name = null
  # events - (optional) is a type of list of string
  events = []
  # input_context_names - (optional) is a type of list of string
  input_context_names = []
  # is_fallback - (optional) is a type of bool
  is_fallback = null
  # ml_disabled - (optional) is a type of bool
  ml_disabled = null
  # parent_followup_intent_name - (optional) is a type of string
  parent_followup_intent_name = null
  # priority - (optional) is a type of number
  priority = null
  # project - (optional) is a type of string
  project = null
  # reset_contexts - (optional) is a type of bool
  reset_contexts = null
  # webhook_state - (optional) is a type of string
  webhook_state = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
