variable "name" {
  description = "(required) - A user-defined name of the function. Function names must be unique globally."
  type        = string
}

variable "project" {
  description = "(optional) - Project of the function. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - Region of function. Currently can be only \"us-central1\". If it is not provided, the provider region is used."
  type        = string
  default     = null
}

