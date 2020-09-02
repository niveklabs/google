variable "attempt_deadline" {
  description = "(optional) - The deadline for job attempts. If the request handler does not respond by this deadline then the request is\ncancelled and the attempt is marked as a DEADLINE_EXCEEDED failure. The failed attempt can be viewed in\nexecution logs. Cloud Scheduler will retry the job according to the RetryConfig.\nThe allowed duration for this deadline is:\n* For HTTP targets, between 15 seconds and 30 minutes.\n* For App Engine HTTP targets, between 15 seconds and 24 hours.\nA duration in seconds with up to nine fractional digits, terminated by 's'. Example: \"3.5s\""
  type        = string
  default     = null
}

variable "description" {
  description = "(optional) - A human-readable description for the job. \nThis string must not contain more than 500 characters."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - The name of the job."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - Region where the scheduler job resides. If it is not provided, Terraform will use the provider default."
  type        = string
  default     = null
}

variable "schedule" {
  description = "(optional) - Describes the schedule on which the job will be executed."
  type        = string
  default     = null
}

variable "time_zone" {
  description = "(optional) - Specifies the time zone to be used in interpreting schedule.\nThe value of this field must be a time zone name from the tz database."
  type        = string
  default     = null
}

variable "app_engine_http_target" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      app_engine_routing = list(object(
        {
          instance = string
          service  = string
          version  = string
        }
      ))
      body         = string
      headers      = map(string)
      http_method  = string
      relative_uri = string
    }
  ))
  default = []
}

variable "http_target" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      body        = string
      headers     = map(string)
      http_method = string
      oauth_token = list(object(
        {
          scope                 = string
          service_account_email = string
        }
      ))
      oidc_token = list(object(
        {
          audience              = string
          service_account_email = string
        }
      ))
      uri = string
    }
  ))
  default = []
}

variable "pubsub_target" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      attributes = map(string)
      data       = string
      topic_name = string
    }
  ))
  default = []
}

variable "retry_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      max_backoff_duration = string
      max_doublings        = number
      max_retry_duration   = string
      min_backoff_duration = string
      retry_count          = number
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

