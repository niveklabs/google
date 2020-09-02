variable "name" {
  description = "(required) - The name of the variable to manage. Note that variable names can be hierarchical using slashes (e.g. \"prod-variables/hostname\")."
  type        = string
}

variable "parent" {
  description = "(required) - The name of the RuntimeConfig resource containing this variable."
  type        = string
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "text" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "value" {
  description = "(optional)"
  type        = string
  default     = null
}

