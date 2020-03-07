variable "combiner" {
  description = "(required) - How to combine the results of multiple conditions to\ndetermine if an incident should be opened."
  type        = string
}

variable "display_name" {
  description = "(required) - A short name or phrase used to identify the policy in\ndashboards, notifications, and incidents. To avoid confusion, don't use\nthe same display name for multiple policies in the same project. The\nname is limited to 512 Unicode characters."
  type        = string
}

variable "enabled" {
  description = "(optional) - Whether or not the policy is enabled. The default is true."
  type        = bool
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "notification_channels" {
  description = "(optional) - Identifies the notification channels to which notifications should be\nsent when incidents are opened or closed or when new violations occur\non an already opened incident. Each element of this array corresponds\nto the name field in each of the NotificationChannel objects that are\nreturned from the notificationChannels.list method. The syntax of the\nentries in this field is\n'projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]'"
  type        = list(string)
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "user_labels" {
  description = "(optional) - This field is intended to be used for organizing and identifying the AlertPolicy\nobjects.The field can contain up to 64 entries. Each key and value is limited\nto 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values\ncan contain only lowercase letters, numerals, underscores, and dashes. Keys\nmust begin with a letter."
  type        = map(string)
  default     = null
}

variable "conditions" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      condition_absent = list(object(
        {
          aggregations = list(object(
            {
              alignment_period     = string
              cross_series_reducer = string
              group_by_fields      = list(string)
              per_series_aligner   = string
            }
          ))
          duration = string
          filter   = string
          trigger = list(object(
            {
              count   = number
              percent = number
            }
          ))
        }
      ))
      condition_threshold = list(object(
        {
          aggregations = list(object(
            {
              alignment_period     = string
              cross_series_reducer = string
              group_by_fields      = list(string)
              per_series_aligner   = string
            }
          ))
          comparison = string
          denominator_aggregations = list(object(
            {
              alignment_period     = string
              cross_series_reducer = string
              group_by_fields      = list(string)
              per_series_aligner   = string
            }
          ))
          denominator_filter = string
          duration           = string
          filter             = string
          threshold_value    = number
          trigger = list(object(
            {
              count   = number
              percent = number
            }
          ))
        }
      ))
      display_name = string
      name         = string
    }
  ))
}

variable "documentation" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      content   = string
      mime_type = string
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

