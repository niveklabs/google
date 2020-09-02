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

variable "export_subnet_routes_with_public_ip" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "import_custom_routes" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "import_subnet_routes_with_public_ip" {
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

