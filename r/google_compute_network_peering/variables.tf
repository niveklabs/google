variable "auto_create_routes" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "export_custom_routes" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "import_custom_routes" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "network" {
  description = "(required)"
  type        = string
}

variable "peer_network" {
  description = "(required)"
  type        = string
}

