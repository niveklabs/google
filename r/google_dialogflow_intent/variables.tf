variable "action" {
  description = "(optional) - The name of the action associated with the intent.\nNote: The action name must not contain whitespaces."
  type        = string
  default     = null
}

variable "default_response_platforms" {
  description = "(optional) - The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED\n(i.e. default platform)."
  type        = list(string)
  default     = null
}

variable "display_name" {
  description = "(required) - The name of this intent to be displayed on the console."
  type        = string
}

variable "events" {
  description = "(optional) - The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of\nthe contexts must be present in the active user session for an event to trigger this intent. See the \n[events reference](https://cloud.google.com/dialogflow/docs/events-overview) for more details."
  type        = list(string)
  default     = null
}

variable "input_context_names" {
  description = "(optional) - The list of context names required for this intent to be triggered.\nFormat: projects/<Project ID>/agent/sessions/-/contexts/<Context ID>."
  type        = list(string)
  default     = null
}

variable "is_fallback" {
  description = "(optional) - Indicates whether this is a fallback intent."
  type        = bool
  default     = null
}

variable "ml_disabled" {
  description = "(optional) - Indicates whether Machine Learning is disabled for the intent.\nNote: If mlDisabled setting is set to true, then this intent is not taken into account during inference in ML\nONLY match mode. Also, auto-markup in the UI is turned off."
  type        = bool
  default     = null
}

variable "parent_followup_intent_name" {
  description = "(optional) - The unique identifier of the parent intent in the chain of followup intents.\nFormat: projects/<Project ID>/agent/intents/<Intent ID>."
  type        = string
  default     = null
}

variable "priority" {
  description = "(optional) - The priority of this intent. Higher numbers represent higher priorities.\n  - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds\n  to the Normal priority in the console.\n  - If the supplied value is negative, the intent is ignored in runtime detect intent requests."
  type        = number
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "reset_contexts" {
  description = "(optional) - Indicates whether to delete all contexts in the current session when this intent is matched."
  type        = bool
  default     = null
}

variable "webhook_state" {
  description = "(optional) - Indicates whether webhooks are enabled for the intent.\n* WEBHOOK_STATE_ENABLED: Webhook is enabled in the agent and in the intent.\n* WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING: Webhook is enabled in the agent and in the intent. Also, each slot\nfilling prompt is forwarded to the webhook."
  type        = string
  default     = null
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      update = string
    }
  ))
  default = []
}

