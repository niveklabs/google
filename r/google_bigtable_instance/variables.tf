variable "display_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "instance_type" {
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

variable "cluster" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      cluster_id   = string
      num_nodes    = number
      storage_type = string
      zone         = string
    }
  ))
  default = []
}

