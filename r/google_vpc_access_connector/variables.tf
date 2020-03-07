variable "ip_cidr_range" {
  description = "(required) - The range of internal addresses that follows RFC 4632 notation. Example: '10.132.0.0/28'."
  type        = string
}

variable "max_throughput" {
  description = "(optional) - Maximum throughput of the connector in Mbps, must be greater than 'min_throughput'. Default is 1000."
  type        = number
  default     = null
}

variable "min_throughput" {
  description = "(optional) - Minimum throughput of the connector in Mbps. Default and min is 200."
  type        = number
  default     = null
}

variable "name" {
  description = "(required) - The name of the resource (Max 25 characters)."
  type        = string
}

variable "network" {
  description = "(required) - Name of a VPC network."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(required) - Region where the VPC Access connector resides"
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

