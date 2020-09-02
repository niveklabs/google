variable "auto_create_routes" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "export_custom_routes" {
  description = "(optional) - Whether to export the custom routes to the peer network. Defaults to false."
  type        = bool
  default     = null
}

variable "export_subnet_routes_with_public_ip" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "import_custom_routes" {
  description = "(optional) - Whether to export the custom routes from the peer network. Defaults to false."
  type        = bool
  default     = null
}

variable "import_subnet_routes_with_public_ip" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "name" {
  description = "(required) - Name of the peering."
  type        = string
}

variable "network" {
  description = "(required) - The primary network of the peering."
  type        = string
}

variable "peer_network" {
  description = "(required) - The peer network in the peering. The peer network may belong to a different project."
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

