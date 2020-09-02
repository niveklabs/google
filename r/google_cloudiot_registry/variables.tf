variable "http_config" {
  description = "(optional) - Activate or deactivate HTTP."
  type        = map(string)
  default     = null
}

variable "log_level" {
  description = "(optional) - The default logging verbosity for activity from devices in this\nregistry. Specifies which events should be written to logs. For\nexample, if the LogLevel is ERROR, only events that terminate in\nerrors will be logged. LogLevel is inclusive; enabling INFO logging\nwill also enable ERROR logging. Default value: \"NONE\" Possible values: [\"NONE\", \"ERROR\", \"INFO\", \"DEBUG\"]"
  type        = string
  default     = null
}

variable "mqtt_config" {
  description = "(optional) - Activate or deactivate MQTT."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - A unique name for the resource, required by device registry."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The region in which the created registry should reside.\nIf it is not provided, the provider region is used."
  type        = string
  default     = null
}

variable "state_notification_config" {
  description = "(optional) - A PubSub topic to publish device state updates."
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

