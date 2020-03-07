variable "description" {
  description = "(optional) - The description specified for the model when it was created."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - One or more labels that you can add, to organize your models."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - The name specified for the model."
  type        = string
}

variable "online_prediction_console_logging" {
  description = "(optional) - If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging"
  type        = bool
  default     = null
}

variable "online_prediction_logging" {
  description = "(optional) - If true, online prediction access logs are sent to StackDriver Logging."
  type        = bool
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "regions" {
  description = "(optional) - The list of regions where the model is going to be deployed.\nCurrently only one region per model is supported"
  type        = list(string)
  default     = null
}

variable "default_version" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      name = string
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

