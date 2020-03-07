variable "export_custom_routes" {
  description = "(required) - Whether to export the custom routes to the peer network."
  type        = bool
}

variable "import_custom_routes" {
  description = "(required) - Whether to import the custom routes to the peer network."
  type        = bool
}

variable "network" {
  description = "(required) - The name of the primary network for the peering."
  type        = string
}

variable "peering" {
  description = "(required) - Name of the peering."
  type        = string
}

variable "project" {
  description = "(optional)"
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

