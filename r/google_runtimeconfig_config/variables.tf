variable "description" {
  description = "(optional) - The description to associate with the runtime config."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - The name of the runtime config."
  type        = string
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

