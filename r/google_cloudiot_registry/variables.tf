variable "event_notification_config" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "http_config" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "log_level" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "mqtt_config" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "state_notification_config" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "credentials" {
  description = "nested mode: NestingList, min items: 0, max items: 10"
  type = set(object(
    {
      public_key_certificate = map(string)
    }
  ))
  default = []
}

variable "event_notification_configs" {
  description = "nested mode: NestingList, min items: 0, max items: 10"
  type = set(object(
    {
      pubsub_topic_name = string
      subfolder_matches = string
    }
  ))
  default = []
}

