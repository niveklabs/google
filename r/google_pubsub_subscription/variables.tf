variable "ack_deadline_seconds" {
  description = "(optional) - This value is the maximum time after a subscriber receives a message\nbefore the subscriber should acknowledge the message. After message\ndelivery but before the ack deadline expires and before the message is\nacknowledged, it is an outstanding message and will not be delivered\nagain during that time (on a best-effort basis).\n\nFor pull subscriptions, this value is used as the initial value for\nthe ack deadline. To override this value for a given message, call\nsubscriptions.modifyAckDeadline with the corresponding ackId if using\npull. The minimum custom deadline you can specify is 10 seconds. The\nmaximum custom deadline you can specify is 600 seconds (10 minutes).\nIf this parameter is 0, a default value of 10 seconds is used.\n\nFor push delivery, this value is also used to set the request timeout\nfor the call to the push endpoint.\n\nIf the subscriber never acknowledges the message, the Pub/Sub system\nwill eventually redeliver the message."
  type        = number
  default     = null
}

variable "filter" {
  description = "(optional) - The subscription only delivers the messages that match the filter. \nPub/Sub automatically acknowledges the messages that don't match the filter. You can filter messages\nby their attributes. The maximum length of a filter is 256 bytes. After creating the subscription, \nyou can't modify the filter."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - A set of key/value label pairs to assign to this Subscription."
  type        = map(string)
  default     = null
}

variable "message_retention_duration" {
  description = "(optional) - How long to retain unacknowledged messages in the subscription's\nbacklog, from the moment a message is published. If\nretainAckedMessages is true, then this also configures the retention\nof acknowledged messages, and thus configures how far back in time a\nsubscriptions.seek can be done. Defaults to 7 days. Cannot be more\nthan 7 days ('\"604800s\"') or less than 10 minutes ('\"600s\"').\n\nA duration in seconds with up to nine fractional digits, terminated\nby 's'. Example: '\"600.5s\"'."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Name of the subscription."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "retain_acked_messages" {
  description = "(optional) - Indicates whether to retain acknowledged messages. If 'true', then\nmessages are not expunged from the subscription's backlog, even if\nthey are acknowledged, until they fall out of the\nmessageRetentionDuration window."
  type        = bool
  default     = null
}

variable "topic" {
  description = "(required) - A reference to a Topic resource."
  type        = string
}

variable "dead_letter_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      dead_letter_topic     = string
      max_delivery_attempts = number
    }
  ))
  default = []
}

variable "expiration_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      ttl = string
    }
  ))
  default = []
}

variable "push_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      attributes = map(string)
      oidc_token = list(object(
        {
          audience              = string
          service_account_email = string
        }
      ))
      push_endpoint = string
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

