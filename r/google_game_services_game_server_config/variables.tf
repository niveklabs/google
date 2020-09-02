variable "config_id" {
  description = "(required) - A unique id for the deployment config."
  type        = string
}

variable "deployment_id" {
  description = "(required) - A unique id for the deployment."
  type        = string
}

variable "description" {
  description = "(optional) - The description of the game server config."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - The labels associated with this game server config. Each label is a\nkey-value pair."
  type        = map(string)
  default     = null
}

variable "location" {
  description = "(optional) - Location of the Deployment."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "fleet_configs" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      fleet_spec = string
      name       = string
    }
  ))
}

variable "scaling_configs" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      fleet_autoscaler_spec = string
      name                  = string
      schedules = list(object(
        {
          cron_job_duration = string
          cron_spec         = string
          end_time          = string
          start_time        = string
        }
      ))
      selectors = list(object(
        {
          labels = map(string)
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

