variable "name" {
  description = "(optional) - The name of the instance. One of name or self_link must be provided."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used."
  type        = string
  default     = null
}

variable "self_link" {
  description = "(optional) - The URI of the created resource."
  type        = string
  default     = null
}

variable "zone" {
  description = "(optional) - The zone of the instance. If self_link is provided, this value is ignored. If neither self_link nor zone are provided, the provider zone is used."
  type        = string
  default     = null
}

