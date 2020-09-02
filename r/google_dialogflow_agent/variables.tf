variable "api_version" {
  description = "(optional) - API version displayed in Dialogflow console. If not specified, V2 API is assumed. Clients are free to query\ndifferent service endpoints for different API versions. However, bots connectors and webhook calls will follow \nthe specified API version.\n* API_VERSION_V1: Legacy V1 API.\n* API_VERSION_V2: V2 API.\n* API_VERSION_V2_BETA_1: V2beta1 API. Possible values: [\"API_VERSION_V1\", \"API_VERSION_V2\", \"API_VERSION_V2_BETA_1\"]"
  type        = string
  default     = null
}

variable "avatar_uri" {
  description = "(optional) - The URI of the agent's avatar, which are used throughout the Dialogflow console. When an image URL is entered\ninto this field, the Dialogflow will save the image in the backend. The address of the backend image returned\nfrom the API will be shown in the [avatarUriBackend] field."
  type        = string
  default     = null
}

variable "classification_threshold" {
  description = "(optional) - To filter out false positive results and still get variety in matched natural language inputs for your agent,\nyou can tune the machine learning classification threshold. If the returned score value is less than the threshold\nvalue, then a fallback intent will be triggered or, if there are no fallback intents defined, no intent will be \ntriggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the \ndefault of 0.3 is used."
  type        = number
  default     = null
}

variable "default_language_code" {
  description = "(required) - The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/docs/reference/language) \nfor a list of the currently supported language codes. This field cannot be updated after creation."
  type        = string
}

variable "description" {
  description = "(optional) - The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(required) - The name of this agent."
  type        = string
}

variable "enable_logging" {
  description = "(optional) - Determines whether this agent should log conversation queries."
  type        = bool
  default     = null
}

variable "match_mode" {
  description = "(optional) - Determines how intents are detected from user queries.\n* MATCH_MODE_HYBRID: Best for agents with a small number of examples in intents and/or wide use of templates\nsyntax and composite entities.\n* MATCH_MODE_ML_ONLY: Can be used for agents with a large number of examples in intents, especially the ones\nusing @sys.any or very large developer entities. Possible values: [\"MATCH_MODE_HYBRID\", \"MATCH_MODE_ML_ONLY\"]"
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "supported_language_codes" {
  description = "(optional) - The list of all languages supported by this agent (except for the defaultLanguageCode)."
  type        = list(string)
  default     = null
}

variable "tier" {
  description = "(optional) - The agent tier. If not specified, TIER_STANDARD is assumed.\n* TIER_STANDARD: Standard tier.\n* TIER_ENTERPRISE: Enterprise tier (Essentials).\n* TIER_ENTERPRISE_PLUS: Enterprise tier (Plus).\nNOTE: Due to consistency issues, the provider will not read this field from the API. Drift is possible between \nthe Terraform state and Dialogflow if the agent tier is changed outside of Terraform. Possible values: [\"TIER_STANDARD\", \"TIER_ENTERPRISE\", \"TIER_ENTERPRISE_PLUS\"]"
  type        = string
  default     = null
}

variable "time_zone" {
  description = "(required) - The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,\nEurope/Paris."
  type        = string
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

