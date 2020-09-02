variable "data_refresh_window_days" {
  description = "(optional) - The number of days to look back to automatically refresh the data.\nFor example, if dataRefreshWindowDays = 10, then every day BigQuery\nreingests data for [today-10, today-1], rather than ingesting data for\njust [today-1]. Only valid if the data source supports the feature.\nSet the value to 0 to use the default value."
  type        = number
  default     = null
}

variable "data_source_id" {
  description = "(required) - The data source id. Cannot be changed once the transfer config is created."
  type        = string
}

variable "destination_dataset_id" {
  description = "(required) - The BigQuery target dataset id."
  type        = string
}

variable "disabled" {
  description = "(optional) - When set to true, no runs are scheduled for a given transfer."
  type        = bool
  default     = null
}

variable "display_name" {
  description = "(required) - The user specified display name for the transfer config."
  type        = string
}

variable "location" {
  description = "(optional) - The geographic location where the transfer config should reside.\nExamples: US, EU, asia-northeast1. The default value is US."
  type        = string
  default     = null
}

variable "notification_pubsub_topic" {
  description = "(optional) - Pub/Sub topic where notifications will be sent after transfer runs\nassociated with this transfer config finish."
  type        = string
  default     = null
}

variable "params" {
  description = "(required) - These parameters are specific to each data source."
  type        = map(string)
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "schedule" {
  description = "(optional) - Data transfer schedule. If the data source does not support a custom\nschedule, this should be empty. If it is empty, the default value for\nthe data source will be used. The specified times are in UTC. Examples\nof valid format: 1st,3rd monday of month 15:30, every wed,fri of jan,\njun 13:15, and first sunday of quarter 00:00. See more explanation\nabout the format here:\nhttps://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format\nNOTE: the granularity should be at least 8 hours, or less frequent."
  type        = string
  default     = null
}

variable "service_account_name" {
  description = "(optional) - Optional service account name. If this field is set, transfer config will\nbe created with this service account credentials. It requires that\nrequesting user calling this API has permissions to act as this service account."
  type        = string
  default     = null
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

