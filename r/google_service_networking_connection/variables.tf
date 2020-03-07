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

