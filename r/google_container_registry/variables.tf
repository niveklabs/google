variable "location" {
  description = "(optional) - The location of the registry. One of ASIA, EU, US or not specified. See the official documentation for more information on registry locations."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

