variable "network" {
  description = "(required)"
  type        = string
}

variable "reserved_peering_ranges" {
  description = "(required)"
  type        = list(string)
}

variable "service" {
  description = "(required)"
  type        = string
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

