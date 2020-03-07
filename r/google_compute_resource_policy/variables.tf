variable "name" {
  description = "(required) - The name of the resource, provided by the client when initially creating\nthe resource. The resource name must be 1-63 characters long, and comply\nwith RFC1035. Specifically, the name must be 1-63 characters long and\nmatch the regular expression '[a-z]([-a-z0-9]*[a-z0-9])'? which means the\nfirst character must be a lowercase letter, and all following characters\nmust be a dash, lowercase letter, or digit, except the last character,\nwhich cannot be a dash."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - Region where resource policy resides."
  type        = string
  default     = null
}

variable "snapshot_schedule_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      retention_policy = list(object(
        {
          max_retention_days    = number
          on_source_disk_delete = string
        }
      ))
      schedule = list(object(
        {
          daily_schedule = list(object(
            {
              days_in_cycle = number
              start_time    = string
            }
          ))
          hourly_schedule = list(object(
            {
              hours_in_cycle = number
              start_time     = string
            }
          ))
          weekly_schedule = list(object(
            {
              day_of_weeks = set(object(
                {
                  day        = string
                  start_time = string
                }
              ))
            }
          ))
        }
      ))
      snapshot_properties = list(object(
        {
          guest_flush       = bool
          labels            = map(string)
          storage_locations = set(string)
        }
      ))
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
    }
  ))
  default = []
}

