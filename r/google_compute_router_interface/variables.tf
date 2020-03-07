variable "interconnect_attachment" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "ip_range" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "router" {
  description = "(required)"
  type        = string
}

variable "vpn_tunnel" {
  description = "(optional)"
  type        = string
  default     = null
}

