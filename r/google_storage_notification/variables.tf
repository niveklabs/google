variable "bucket" {
  description = "(required) - The name of the bucket."
  type        = string
}

variable "custom_attributes" {
  description = "(optional) -  A set of key/value attribute pairs to attach to each Cloud PubSub message published for this notification subscription"
  type        = map(string)
  default     = null
}

variable "event_types" {
  description = "(optional) - List of event type filters for this notification config. If not specified, Cloud Storage will send notifications for all event types. The valid types are: \"OBJECT_FINALIZE\", \"OBJECT_METADATA_UPDATE\", \"OBJECT_DELETE\", \"OBJECT_ARCHIVE\""
  type        = set(string)
  default     = null
}

variable "object_name_prefix" {
  description = "(optional) - Specifies a prefix path filter for this notification config. Cloud Storage will only send notifications for objects in this bucket whose names begin with the specified prefix."
  type        = string
  default     = null
}

variable "payload_format" {
  description = "(required) - The desired content of the Payload. One of \"JSON_API_V1\" or \"NONE\"."
  type        = string
}

variable "topic" {
  description = "(required) - The Cloud PubSub topic to which this subscription publishes. Expects either the  topic name, assumed to belong to the default GCP provider project, or the project-level name,  i.e. projects/my-gcp-project/topics/my-topic or my-topic. If the project is not set in the provider, you will need to use the project-level name."
  type        = string
}

