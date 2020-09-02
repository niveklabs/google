variable "calendar_period" {
  description = "(optional) - A calendar period, semantically \"since the start of the current\n<calendarPeriod>\". Possible values: [\"DAY\", \"WEEK\", \"FORTNIGHT\", \"MONTH\"]"
  type        = string
  default     = null
}

variable "display_name" {
  description = "(optional) - Name used for UI elements listing this SLO."
  type        = string
  default     = null
}

variable "goal" {
  description = "(required) - The fraction of service that must be good in order for this objective\nto be met. 0 < goal <= 0.999"
  type        = number
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "rolling_period_days" {
  description = "(optional) - A rolling time period, semantically \"in the past X days\".\nMust be between 1 to 30 days, inclusive."
  type        = number
  default     = null
}

variable "service" {
  description = "(required) - ID of the service to which this SLO belongs."
  type        = string
}

variable "slo_id" {
  description = "(optional) - The id to use for this ServiceLevelObjective. If omitted, an id will be generated instead."
  type        = string
  default     = null
}

variable "basic_sli" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      latency = list(object(
        {
          threshold = string
        }
      ))
      location = set(string)
      method   = set(string)
      version  = set(string)
    }
  ))
  default = []
}

variable "request_based_sli" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      distribution_cut = list(object(
        {
          distribution_filter = string
          range = list(object(
            {
              max = number
              min = number
            }
          ))
        }
      ))
      good_total_ratio = list(object(
        {
          bad_service_filter   = string
          good_service_filter  = string
          total_service_filter = string
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
      update = string
    }
  ))
  default = []
}

variable "windows_based_sli" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      good_bad_metric_filter = string
      good_total_ratio_threshold = list(object(
        {
          basic_sli_performance = list(object(
            {
              latency = list(object(
                {
                  threshold = string
                }
              ))
              location = set(string)
              method   = set(string)
              version  = set(string)
            }
          ))
          performance = list(object(
            {
              distribution_cut = list(object(
                {
                  distribution_filter = string
                  range = list(object(
                    {
                      max = number
                      min = number
                    }
                  ))
                }
              ))
              good_total_ratio = list(object(
                {
                  bad_service_filter   = string
                  good_service_filter  = string
                  total_service_filter = string
                }
              ))
            }
          ))
          threshold = number
        }
      ))
      metric_mean_in_range = list(object(
        {
          range = list(object(
            {
              max = number
              min = number
            }
          ))
          time_series = string
        }
      ))
      metric_sum_in_range = list(object(
        {
          range = list(object(
            {
              max = number
              min = number
            }
          ))
          time_series = string
        }
      ))
      window_period = string
    }
  ))
  default = []
}

